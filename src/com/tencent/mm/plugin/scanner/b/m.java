package com.tencent.mm.plugin.scanner.b;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.scanner.ui.ProductUI;
import com.tencent.mm.plugin.scanner.ui.ai;
import com.tencent.mm.plugin.scanner.ui.am;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.Map;

public final class m
{
  public static n P(String paramString, int paramInt)
  {
    if (paramString == null)
      return null;
    Map localMap;
    int i;
    String str1;
    label28: n localn;
    if (paramString.startsWith("<productInfo"))
    {
      localMap = u.aL(paramString, "productInfo");
      i = 1;
      str1 = ".productInfo";
      if (localMap == null)
        break label479;
      localn = new n();
      if (cj.hX((String)localMap.get(str1 + ".product.$type")))
        break label481;
      localn.field_type = Integer.valueOf((String)localMap.get(str1 + ".product.$type")).intValue();
      label114: localn.field_productid = cj.hW((String)localMap.get(str1 + ".product.id"));
      localn.field_subtitle = cj.hW((String)localMap.get(str1 + ".product.subtitle"));
      localn.field_shareurl = cj.hW((String)localMap.get(str1 + ".product.shareurl"));
      localn.field_playurl = cj.hW((String)localMap.get(str1 + ".product.playurl"));
      localn.field_xmlType = 3;
      localn.field_title = cj.hW((String)localMap.get(str1 + ".product.title"));
      localn.field_thumburl = cj.hW((String)localMap.get(str1 + ".product.thumburl"));
      localn.field_source = cj.hW((String)localMap.get(str1 + ".product.source"));
      localn.egv = com.tencent.mm.plugin.scanner.a.a.d(localMap, str1 + ".product");
      String str2 = (String)localMap.get(str1 + ".functionType");
      if (cj.hX(str2))
        break label490;
      localn.field_functionType = Integer.valueOf(str2).intValue();
      label451: if (i == 0)
        break label499;
    }
    label479: label481: label490: label499: StringBuilder localStringBuilder;
    for (localn.field_xml = paramString; ; localn.field_xml = localStringBuilder.toString())
    {
      return localn;
      localMap = u.aL(paramString, "product");
      str1 = "";
      i = 0;
      break label28;
      break;
      localn.field_type = 0;
      break label114;
      localn.field_functionType = paramInt;
      break label451;
      localStringBuilder = new StringBuilder(256);
      localStringBuilder.append("<productInfo>");
      localStringBuilder.append(paramString);
      localStringBuilder.append("<functionType>" + localn.field_functionType + "</functionType>");
      localStringBuilder.append("</productInfo>");
    }
  }

  public static int a(String paramString, ai paramai, int paramInt)
  {
    if ((paramai == null) || (paramString == null) || (paramai.aau() == null) || (paramai.aau().aal() == null))
    {
      Object[] arrayOfObject1 = new Object[1];
      if (paramString == null);
      for (boolean bool = true; ; bool = false)
      {
        arrayOfObject1[0] = Boolean.valueOf(bool);
        aa.b("MicroMsg.Scanner.ScanXmlHelper", "wrong args, xml == null ? [%s]", arrayOfObject1);
        return 2;
      }
    }
    int i = mF(paramString);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(i);
    aa.e("MicroMsg.Scanner.ScanXmlHelper", "processReturnXml(), xmlType = [%s]", arrayOfObject2);
    if (i == 1)
    {
      p localp = null;
      if (paramString == null);
      while ((localp == null) || (cj.hX(localp.username)))
      {
        aa.w("MicroMsg.Scanner.ScanXmlHelper", "xmlUser null");
        return 2;
        Map localMap1 = u.aL(paramString, "user");
        localp = null;
        if (localMap1 != null)
          localp = new p(cj.hW((String)localMap1.get(".user.username")), cj.hW((String)localMap1.get(".user.nickname")));
      }
      i locali = be.uz().su().tO(localp.username);
      if ((locali != null) && (locali.rj() > 0))
      {
        Intent localIntent1 = new Intent();
        localIntent1.putExtra("Contact_User", locali.getUsername());
        localIntent1.setFlags(65536);
        com.tencent.mm.plugin.scanner.a.Tm().c(localIntent1, paramai.aau().aal());
        return 0;
      }
      paramai.a(paramai.aau().aal(), localp.username, 45);
      return 1;
    }
    if (i == 2)
    {
      o localo = null;
      if (paramString == null);
      while ((localo == null) || (cj.hX(localo.cxM)))
      {
        aa.w("MicroMsg.Scanner.ScanXmlHelper", "xmlurl null");
        return 2;
        Map localMap2 = u.aL(paramString, "url");
        localo = null;
        if (localMap2 != null)
          localo = new o(cj.hW((String)localMap2.get(".url.link")));
      }
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = localo.cxM;
      aa.e("MicroMsg.Scanner.ScanXmlHelper", "xmlurl.link: [%s]", arrayOfObject3);
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("rawUrl", localo.cxM);
      localIntent2.setFlags(65536);
      com.tencent.mm.plugin.scanner.a.Tm().h(localIntent2, paramai.aau().aal());
      return 0;
    }
    if ((i == 3) || (i == 4))
    {
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Integer.valueOf(paramInt);
      arrayOfObject4[1] = Boolean.valueOf(true);
      aa.e("MicroMsg.Scanner.ScanXmlHelper", "funcType = [%s], addProductToDB = [%s]", arrayOfObject4);
      Intent localIntent3 = new Intent();
      localIntent3.setClass(paramai.aau().aal(), ProductUI.class);
      localIntent3.setFlags(65536);
      localIntent3.putExtra("key_Product_xml", paramString);
      localIntent3.putExtra("key_Product_funcType", paramInt);
      localIntent3.putExtra("key_ProductUI_addToDB", true);
      paramai.aau().aal().startActivity(localIntent3);
      return 0;
    }
    aa.w("MicroMsg.Scanner.ScanXmlHelper", "wrong xmlType");
    aa.f("MicroMsg.Scanner.ScanXmlHelper", "wrong xml : [%s]", new Object[] { paramString });
    return 2;
  }

  public static String b(Context paramContext, int paramInt)
  {
    if ((paramContext == null) || (paramInt < 0))
      return "";
    if (paramInt == 0)
      paramContext.getString(com.tencent.mm.n.bxw);
    while (true)
    {
      return paramContext.getString(com.tencent.mm.n.bxw);
      if (paramInt == 1)
        paramContext.getString(com.tencent.mm.n.bxt);
      else if (paramInt == 2)
        paramContext.getString(com.tencent.mm.n.bxv);
      else if (paramInt == 3)
        paramContext.getString(com.tencent.mm.n.bxu);
    }
  }

  public static String b(n paramn)
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    if (!cj.hX(paramn.field_productid))
    {
      localStringBuilder.append("<productInfo><product type=\"" + paramn.field_type + "\">");
      localStringBuilder.append("<id>" + cj.sS(paramn.field_productid) + "</id>");
      localStringBuilder.append("<title>" + cj.sS(paramn.field_title) + "</title>");
      localStringBuilder.append("<subtitle>" + cj.sS(paramn.field_subtitle) + "</subtitle>");
      localStringBuilder.append("<thumburl>" + cj.sS(paramn.field_thumburl) + "</thumburl>");
      localStringBuilder.append("<source>" + cj.sS(paramn.field_source) + "</source>");
      localStringBuilder.append("<shareurl>" + cj.sS(paramn.field_shareurl) + "</shareurl>");
      localStringBuilder.append("<playurl>" + cj.sS(paramn.field_playurl) + "</playurl>");
      localStringBuilder.append("</product>");
      localStringBuilder.append("<functionType>" + paramn.field_functionType + "</functionType>");
      localStringBuilder.append("</productInfo>");
    }
    while (true)
    {
      return localStringBuilder.toString();
      if (paramn.field_xml == null)
      {
        aa.e("MicroMsg.Scanner.ScanXmlHelper", "product.field_xml == null in getProductInfoXml()");
        return "";
      }
      if (paramn.field_xml.startsWith("<productInfo"))
        return paramn.field_xml;
      localStringBuilder.append("<productInfo>");
      localStringBuilder.append(paramn.field_xml);
      localStringBuilder.append("<functionType>" + paramn.field_functionType + "</functionType>");
      localStringBuilder.append("</productInfo>");
    }
  }

  public static int mF(String paramString)
  {
    if (paramString == null);
    String str;
    do
    {
      return 0;
      str = paramString.trim();
      if (str.startsWith("<user"))
        return 1;
      if (str.startsWith("<url"))
        return 2;
      if (str.startsWith("<product"))
        return 3;
    }
    while (!str.startsWith("<search"));
    return 4;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.b.m
 * JD-Core Version:    0.6.2
 */