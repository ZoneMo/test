package com.tencent.mm.plugin.c.a;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import com.tencent.mm.c.a.cl;
import com.tencent.mm.modelsimple.x;
import com.tencent.mm.plugin.scanner.ui.VcardContactUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

public final class d
{
  public static boolean a(i parami, x paramx, DialogInterface.OnClickListener paramOnClickListener, int paramInt, String paramString)
  {
    if ((parami == null) || (parami.getContext() == null))
    {
      aa.e("MicroMsg.scanner.GetA8KeyRedirect", "handleGetA8KeyRedirect, null redirectContext");
      return false;
    }
    int i = paramx.Cn();
    aa.d("MicroMsg.scanner.GetA8KeyRedirect", "actionCode : " + i);
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("geta8key_scene", 4);
    if ((paramx.Cl() != null) && ((paramx.Cl().startsWith("http://login.weixin.qq.com")) || (paramx.Cl().startsWith("https://login.weixin.qq.com"))))
      paramInt = 2;
    switch (i)
    {
    case 5:
    case 13:
    default:
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "getA8key-not_catch: action code = " + paramx.Cn());
    case 1:
    case 2:
    case 7:
    case 6:
    case 4:
    case 3:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 14:
    }
    while (true)
    {
      return false;
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "getA8key-text: " + paramx.getContent());
      localIntent1.putExtra("data", paramx.getContent());
      localIntent1.putExtra("showShare", false);
      com.tencent.mm.plugin.scanner.a.Tm().h(localIntent1, parami.getContext());
      return true;
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "getA8key-webview: " + paramx.Cl());
      Context localContext1 = parami.getContext();
      Context localContext2 = parami.getContext();
      int j = com.tencent.mm.n.bua;
      Object[] arrayOfObject = new Object[1];
      if (!cj.hX(paramString));
      while (true)
      {
        arrayOfObject[0] = paramString;
        com.tencent.mm.ui.base.h.a(localContext1, localContext2.getString(j, arrayOfObject), parami.getContext().getString(com.tencent.mm.n.ber), new e(localIntent1, paramx, parami), paramOnClickListener);
        return true;
        paramString = paramx.Cl();
      }
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "getA8key-webview_no_notice: " + paramx.Cl());
      localIntent1.putExtra("title", paramx.getTitle());
      localIntent1.putExtra("rawUrl", paramx.Cl());
      com.tencent.mm.plugin.scanner.a.Tm().h(localIntent1, parami.getContext());
      return true;
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "getA8key-special_webview: " + paramx.Cl());
      localIntent1.putExtra("rawUrl", paramx.Cl());
      localIntent1.putExtra("showShare", false);
      if (paramInt == 2)
      {
        localIntent1.putExtra("show_bottom", false);
        localIntent1.putExtra("isWebwx", false);
      }
      com.tencent.mm.plugin.scanner.a.Tm().h(localIntent1, parami.getContext());
      return true;
      return false;
      String str5 = paramx.Cl();
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "getA8key-app: " + str5);
      if ((str5 == null) || (str5.length() == 0))
      {
        aa.e("MicroMsg.scanner.GetA8KeyRedirect", "getA8key-app, fullUrl is null");
        return true;
      }
      String str6 = parami.getContext().getString(com.tencent.mm.n.btZ);
      if (str5.startsWith("http"))
        str6 = parami.getContext().getString(com.tencent.mm.n.bua, new Object[] { str5 });
      Uri localUri = Uri.parse(str5);
      if (localUri != null)
      {
        Intent localIntent4 = new Intent("android.intent.action.VIEW", localUri);
        localIntent4.addFlags(268435456);
        if (cj.i(parami.getContext(), localIntent4))
        {
          com.tencent.mm.ui.base.h.a(parami.getContext(), str6, parami.getContext().getString(com.tencent.mm.n.ber), new f(parami, localIntent4));
          return true;
        }
      }
      return true;
      String str4 = paramx.getContent();
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "get vcard from server: " + str4);
      com.tencent.mm.plugin.scanner.a.n localn;
      if (!cj.hX(str4))
        localn = new com.tencent.mm.plugin.scanner.a.n();
      try
      {
        localn.mz(str4);
        Intent localIntent3 = new Intent(parami.getContext(), VcardContactUI.class);
        parami.getContext().startActivity(localIntent3);
        parami.aT(false);
        return true;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        while (true)
          aa.e("MicroMsg.scanner.GetA8KeyRedirect", "parser vcardxml err: " + localXmlPullParserException.getMessage() + " " + str4);
      }
      catch (IOException localIOException)
      {
        while (true)
          aa.e("MicroMsg.scanner.GetA8KeyRedirect", "parser vcardxml err: " + localIOException.getMessage() + " " + str4);
      }
      com.tencent.mm.plugin.scanner.a.Tm().i(parami.getContext(), paramx.Cl());
      continue;
      String str3 = paramx.Cl();
      aa.d("MicroMsg.scanner.GetA8KeyRedirect", "get MMPAY: " + str3);
      if ((str3 != null) && (str3.startsWith("http://p.qq.com?")))
      {
        cl localcl2 = new cl();
        localcl2.bNO.bNQ = i;
        localcl2.bNO.bNR = str3;
        localcl2.bNO.context = parami.getContext();
        localcl2.gbX = new g(parami, localcl2);
        com.tencent.mm.sdk.b.a.ayH().a(localcl2, Looper.myLooper());
      }
      else
      {
        aa.w("MicroMsg.GetA8KeyRedirect", "fail to publish pay qrcode, reason: error format");
        continue;
        String str2 = paramx.Cl();
        aa.d("MicroMsg.scanner.GetA8KeyRedirect", "get MMPAY: " + str2);
        cl localcl1 = new cl();
        localcl1.bNO.bNQ = i;
        localcl1.bNO.bNR = str2;
        localcl1.bNO.context = parami.getContext();
        localcl1.gbX = new h(parami, localcl1);
        com.tencent.mm.sdk.b.a.ayH().a(localcl1, Looper.myLooper());
        continue;
        String str1 = paramx.Cl();
        if (str1 != null)
          str1 = str1.replace("wxpd://", "");
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("key_product_id", str1);
        localIntent2.putExtra("key_product_scene", 7);
        com.tencent.mm.ak.a.b(parami.getContext(), "mall", ".product.ui.MallProductUI", localIntent2);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.c.a.d
 * JD-Core Version:    0.6.2
 */