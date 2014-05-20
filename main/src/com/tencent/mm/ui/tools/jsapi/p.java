package com.tencent.mm.ui.tools.jsapi;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import com.tencent.mm.c.a.cy;
import com.tencent.mm.c.a.fv;
import com.tencent.mm.c.a.fw;
import com.tencent.mm.c.a.fz;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.model.ar;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.pluginsdk.model.downloader.FileDownloadManger;
import com.tencent.mm.pluginsdk.ui.tools.y;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.protocal.a.ft;
import com.tencent.mm.protocal.a.fy;
import com.tencent.mm.sdk.modelmsg.WXAppExtendObject;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.WXWebpageObject;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.br;
import com.tencent.mm.w.ag;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import org.json.JSONObject;

public class p
  implements com.tencent.mm.m.p, com.tencent.mm.pluginsdk.ui.applet.f, br
{
  private static p hpl = null;
  private static Bundle hpq;
  private WXMediaMessage bOa;
  private ProgressDialog cIr = null;
  private com.tencent.mm.storage.i cQI;
  private Context context;
  boolean dgb = false;
  private com.tencent.mm.plugin.webview.stub.ao feu;
  private ao hpm;
  private ProgressDialog hpn;
  private ce hpo;
  private HashSet hpp = new HashSet();
  public String hpr = null;
  private e hps = null;
  private String hpt;
  private com.tencent.mm.pluginsdk.m hpu = null;
  private com.tencent.mm.pluginsdk.n hpv = null;
  private Handler hpw;
  private Map map;

  public static void A(Bundle paramBundle)
  {
    hpq = paramBundle;
  }

  private void I(com.tencent.mm.storage.i parami)
  {
    if ((parami == null) || (parami.rj() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "showContact fail, contact does not exist");
      a(this.hpm, "add_contact:fail", null);
    }
    do
    {
      return;
      String str1 = this.context.getString(com.tencent.mm.n.bIk);
      Bitmap localBitmap = c.a(parami.getUsername(), false, -1);
      if (localBitmap == null)
        af.vJ().a(this);
      if ((localBitmap != null) && (parami.aAp()))
        localBitmap = com.tencent.mm.sdk.platformtools.h.a(localBitmap, false, localBitmap.getWidth() / 2);
      String str2 = parami.kn();
      Context localContext = this.context;
      int i = com.tencent.mm.n.bdq;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = parami.getUsername();
      String str3 = localContext.getString(i, arrayOfObject);
      this.hpo = null;
      if ((this.context instanceof MMActivity))
        this.hpo = com.tencent.mm.pluginsdk.ui.applet.i.a((MMActivity)this.context, str1, localBitmap, str2, str3, com.tencent.mm.n.bhA, parami.aAp(), new ad(this, parami));
    }
    while (this.hpo != null);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "showContact fail, cannot show dialog");
    a(this.hpm, "add_contact:fail", null);
  }

  private void a(com.tencent.mm.pluginsdk.model.app.k paramk, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if (this.bOa == null)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "doSendAppMsg: but appmsg is null");
      return;
    }
    ag.AZ();
    Bitmap localBitmap = com.tencent.mm.w.a.fP(paramString3);
    if ((localBitmap != null) && (!localBitmap.isRecycled()))
    {
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "thumb image is not null");
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      localBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
      this.bOa.thumbData = localByteArrayOutputStream.toByteArray();
    }
    fv localfv = new fv();
    localfv.bQp.bOa = this.bOa;
    localfv.bQp.appId = paramString1;
    fw localfw = localfv.bQp;
    String str;
    if (paramk == null)
    {
      str = "";
      label125: localfw.appName = str;
      localfv.bQp.bQq = paramString2;
      localfv.bQp.bQr = 2;
      if (!cj.hX(paramString4))
        break label310;
      localfv.bQp.bQu = null;
    }
    while (true)
    {
      com.tencent.mm.sdk.b.a.ayH().f(localfv);
      if (!cj.hX(paramString6))
      {
        com.tencent.mm.c.a.fx localfx = new com.tencent.mm.c.a.fx();
        localfx.bQv.bQw = paramString2;
        localfx.bQv.content = paramString6;
        localfx.bQv.type = com.tencent.mm.model.w.dd(paramString2);
        localfx.bQv.flags = 0;
        com.tencent.mm.sdk.b.a.ayH().f(localfx);
      }
      if (cj.hX(paramString7))
        break;
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(49);
      arrayOfObject[1] = Integer.valueOf(128);
      arrayOfObject[2] = paramString7;
      localm.d(10424, arrayOfObject);
      return;
      str = paramk.field_appName;
      break label125;
      label310: localfv.bQp.bQs = paramString4;
      localfv.bQp.bQt = paramString5;
    }
  }

  private void a(ao paramao, String paramString, Map paramMap)
  {
    this.dgb = false;
    try
    {
      com.tencent.mm.plugin.webview.stub.ao localao = this.feu;
      if (paramao == null);
      for (String str = null; ; str = paramao.hpK)
      {
        localao.b(str, paramString, ao.r(paramMap));
        return;
      }
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "onHandleEnd, ex = " + localException.getMessage());
    }
  }

  private boolean a(ao paramao)
  {
    String str = (String)paramao.dOk.get("fontSize");
    if ((str == null) || (str.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doSetFontSizeCb, fontSize is null");
      this.dgb = false;
      return false;
    }
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doSetFontSizeCb, fontSize = " + str);
    try
    {
      this.feu.pU(str);
      this.dgb = false;
      return false;
    }
    catch (Exception localException)
    {
      while (true)
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "setFontSizeCb, ex = " + localException.getMessage());
    }
  }

  private boolean a(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (!paramJsapiPermissionWrapper.avN())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doWeibo permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    if (!com.tencent.mm.model.v.tK())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doWeibo fail, qq not binded");
      com.tencent.mm.ui.base.x localx2 = com.tencent.mm.ui.base.h.a(this.context, com.tencent.mm.n.bIe, com.tencent.mm.n.ber, new ah(this), null);
      localx2.setCancelable(false);
      localx2.setOnDismissListener(new ai(this, paramao));
      return true;
    }
    ca localca = be.uz().sz().vB("@t.qq.com");
    if ((localca == null) || (cj.hW(localca.getName()).length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doWeibo fail, no weibo");
      com.tencent.mm.ui.base.x localx1 = com.tencent.mm.ui.base.h.a(this.context, com.tencent.mm.n.bIc, com.tencent.mm.n.ber, new aj(this));
      localx1.setCancelable(false);
      localx1.setOnDismissListener(new ak(this, paramao));
      return true;
    }
    String str1 = cj.R((String)paramao.dOk.get("type"), "40");
    if ((str1 != null) && (str1.length() > 0));
    while (true)
    {
      Intent localIntent;
      try
      {
        int k = Integer.parseInt(str1);
        i = k;
        if ((i == 11) || (i == 20))
          break label455;
        j = 40;
        str2 = (String)paramao.dOk.get("content");
        str3 = (String)paramao.dOk.get("url");
        if ((str2 == null) || (str2.trim().length() == 0))
          str2 = "";
        if ((str3 == null) || (str3.length() == 0))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doWeibo fail, invalid argument, content = " + str2 + ", url = " + str3);
          a(paramao, "share_weibo:fail_-2", null);
          return true;
        }
      }
      catch (Exception localException)
      {
        String str2;
        String str3;
        i = 40;
        continue;
        at.a(this.feu, "shareWeibo", xS("shareWeibo"), null);
        String str4 = com.tencent.mm.plugin.webview.b.e.pT(str3);
        localIntent = new Intent(this.context, ShareToQQWeiboUI.class);
        localIntent.putExtra("type", j);
        localIntent.putExtra("shortUrl", str4);
        localIntent.putExtra("content", str2);
      }
      if (!(this.context instanceof MMActivity))
        break;
      ((MMActivity)this.context).a(this, localIntent, 2);
      return true;
      label455: int j = i;
      continue;
      int i = 40;
    }
  }

  private boolean a(Integer paramInteger, int paramInt, Intent paramIntent)
  {
    paramIntent.putExtra("key_product_scene", paramInt);
    com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MsgHandler", "doOpenProductView, productType = %d", new Object[] { paramInteger });
    if ((this.context instanceof MMActivity))
      ((MMActivity)this.context).a(this);
    switch (paramInteger.intValue())
    {
    default:
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MsgHandler", "doOpenProductView fail, productType = %d", new Object[] { paramInteger });
      a(this.hpm, "open_product_view:fail", null);
      return true;
    case 0:
      com.tencent.mm.ak.a.b(this.context, "mall", ".product.ui.MallProductUI", paramIntent);
      a(this.hpm, "open_product_view:ok", null);
      return true;
    case 1:
    case 2:
    }
    com.tencent.mm.ak.a.b(this.context, "card", ".ui.CardProductUI", paramIntent);
    a(this.hpm, "open_product_view:ok", null);
    return true;
  }

  private boolean a(boolean paramBoolean, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (paramBoolean)
    {
      if (!paramJsapiPermissionWrapper.avY())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doShareBtnVisible permission fail, visible = " + paramBoolean);
        a(this.hpm, "system:access_denied", null);
        return true;
      }
    }
    else if (!paramJsapiPermissionWrapper.avX())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doShareBtnVisible permission fail, visible = " + paramBoolean);
      a(this.hpm, "system:access_denied", null);
      return true;
    }
    try
    {
      this.feu.cb(paramBoolean);
      com.tencent.mm.plugin.webview.stub.ao localao = this.feu;
      if (paramBoolean)
      {
        str = "showOptionMenu";
        at.a(localao, str, false, null);
        this.dgb = false;
        return false;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "setShareBtnVisible, ex = " + localException.getMessage());
        continue;
        String str = "hideOptionMenu";
      }
    }
  }

  public static p aOA()
  {
    if (hpl != null)
      return hpl;
    try
    {
      if (hpl == null)
        hpl = new p();
      return hpl;
    }
    finally
    {
    }
  }

  public static Bundle aoZ()
  {
    if (hpq == null)
      hpq = new Bundle();
    return hpq;
  }

  private boolean b(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (!paramJsapiPermissionWrapper.avO())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doTimeline permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    String str1 = (String)paramao.dOk.get("link");
    if ((str1 == null) || (str1.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doTimeline fail, link is null");
      a(paramao, "share_timeline:fail", null);
      return true;
    }
    at.a(this.feu, "shareTimeline", xS("shareTimeline"), str1);
    String str2 = (String)paramao.dOk.get("desc");
    int m;
    String str3;
    if (str2.startsWith("http://"))
    {
      str2.substring(7);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doTimeline, img_url = " + (String)paramao.dOk.get("img_url") + ", title = " + (String)paramao.dOk.get("title") + ", desc = " + (String)paramao.dOk.get("desc"));
      if (hpq == null)
        break label688;
      m = hpq.getInt("snsWebSource", 1);
      str3 = hpq.getString("jsapi_args_appid");
    }
    for (int i = m; ; i = 1)
    {
      while (true)
      {
        String str4 = (String)paramao.dOk.get("img_width");
        String str5 = (String)paramao.dOk.get("img_height");
        String str6 = (String)paramao.dOk.get("link");
        String str7 = com.tencent.mm.plugin.webview.b.e.pT(str6);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doTimeline, rawUrl:[%s], shareUrl:[%s]", new Object[] { str6, str7 });
        String str8 = (String)paramao.dOk.get("type");
        paramao.dOk.get("desc");
        String str9 = (String)paramao.dOk.get("title");
        String str10 = (String)paramao.dOk.get("img_url");
        String str11 = (String)paramao.dOk.get("src_username");
        String str12 = (String)paramao.dOk.get("src_displayname");
        try
        {
          int k = Integer.valueOf(str4).intValue();
          j = k;
        }
        catch (Exception localException1)
        {
          try
          {
            int j;
            Integer.valueOf(str5);
            while (true)
            {
              label441: Intent localIntent = new Intent();
              localIntent.putExtra("Ksnsupload_width", j);
              localIntent.putExtra("Ksnsupload_height", j);
              localIntent.putExtra("Ksnsupload_link", str7);
              localIntent.putExtra("Ksnsupload_title", str9);
              localIntent.putExtra("Ksnsupload_imgurl", str10);
              localIntent.putExtra("src_username", str11);
              localIntent.putExtra("src_displayname", str12);
              localIntent.putExtra("Ksnsupload_source", i);
              localIntent.putExtra("Ksnsupload_type", 1);
              if ((!cj.hX(str8)) && (str8.equals("music")))
                localIntent.putExtra("ksnsis_music", true);
              if ((!cj.hX(str8)) && (str8.equals("video")))
                localIntent.putExtra("ksnsis_video", true);
              if ((str3 != null) && (str3.length() > 0))
                localIntent.putExtra("Ksnsupload_appid", str3);
              com.tencent.mm.ak.a.a(this.context, "sns", ".ui.SnsUploadUI", localIntent, false);
              this.dgb = false;
              return false;
              if (!str2.startsWith("https://"))
                break;
              str2.substring(8);
              break;
              localException1 = localException1;
              j = -1;
            }
          }
          catch (Exception localException2)
          {
            break label441;
          }
        }
      }
      label688: str3 = "";
    }
  }

  private boolean b(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper, ArrayList paramArrayList)
  {
    if (!paramJsapiPermissionWrapper.awl())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doEditAddress permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    at.a(this.feu, "editAddress", false, null);
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "doEditAddress JSOAUTH");
    Object localObject = "";
    try
    {
      String str = this.feu.aoR();
      localObject = str;
      this.hps.a((String)localObject, "editAddress", paramao, paramArrayList, new t(this, paramao));
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "JSOAUTH exception in get currentUrl" + localException.getMessage());
    }
  }

  private boolean b(boolean paramBoolean, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (paramBoolean)
    {
      if (!paramJsapiPermissionWrapper.avW())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doFooterBarVisible permission fail, visible = " + paramBoolean);
        a(this.hpm, "system:access_denied", null);
        return true;
      }
    }
    else if (!paramJsapiPermissionWrapper.avV())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doFooterBarVisible permission fail, visible = " + paramBoolean);
      a(this.hpm, "system:access_denied", null);
      return true;
    }
    try
    {
      this.feu.cc(paramBoolean);
      com.tencent.mm.plugin.webview.stub.ao localao = this.feu;
      if (paramBoolean)
      {
        str = "showToolbar";
        at.a(localao, str, false, null);
        this.dgb = false;
        return false;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "setFooterBarVisible, ex = " + localException.getMessage());
        continue;
        String str = "hideToolbar";
      }
    }
  }

  private boolean c(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (!paramJsapiPermissionWrapper.avP())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddContact permission fail");
      a(paramao, "system:access_denied", null);
    }
    String str2;
    Bitmap localBitmap;
    do
    {
      return true;
      String str1 = (String)paramao.dOk.get("webtype");
      str2 = (String)paramao.dOk.get("username");
      String str3 = (String)paramao.dOk.get("scene");
      if ((str1 == null) || (str1.length() == 0) || (str2 == null) || (str2.length() == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddContact fail, invalid arguments, webType = " + str1 + ", username = " + str2);
        a(paramao, "add_contact:fail", null);
        return true;
      }
      xR(str3);
      try
      {
        int i = Integer.parseInt(str1);
        at.a(this.feu, "addContact", false, str2);
        switch (i)
        {
        default:
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "unknown addScene = " + i);
          a(paramao, "add_contact:fail", null);
          return true;
        case 1:
        }
      }
      catch (Exception localException)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddContact fail, parseInt fail, str = " + str1);
        a(paramao, "add_contact:fail", null);
        return true;
      }
      this.hpt = str2;
      this.cQI = be.uz().su().tO(str2);
      if ((this.cQI == null) || (this.cQI.rj() <= 0))
        break label558;
      if (this.cQI == null)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "dealAddContact fail, contact is null");
        a(this.hpm, "add_contact:fail", null);
        return true;
      }
      String str4 = this.cQI.getUsername();
      if (this.cQI.aAp())
        break;
      com.tencent.mm.p.a locala = com.tencent.mm.p.ab.ye().eG(str4);
      if ((locala != null) && (locala.xA()))
      {
        Context localContext2 = this.context;
        this.context.getString(com.tencent.mm.n.ber);
        this.hpn = com.tencent.mm.ui.base.h.a(localContext2, this.context.getString(com.tencent.mm.n.bIl), true, null);
        ar.tZ().a(str4, new am(this));
        return true;
      }
      localBitmap = BitmapFactory.decodeResource(this.context.getResources(), com.tencent.mm.h.adA);
    }
    while ((!(this.context instanceof MMActivity)) || (com.tencent.mm.pluginsdk.ui.applet.i.a((MMActivity)this.context, localBitmap, this.context.getResources().getString(com.tencent.mm.n.bIo), new an(this)) != null));
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "dealAddContact fail, connot show dialog");
    a(this.hpm, "add_contact:fail", null);
    return true;
    if (this.cQI.rb())
    {
      com.tencent.mm.ui.base.h.an(this.context, this.context.getResources().getString(com.tencent.mm.n.bIm));
      a(this.hpm, "add_contact:added", null);
      return true;
    }
    I(this.cQI);
    return true;
    label558: Context localContext1 = this.context;
    this.context.getString(com.tencent.mm.n.ber);
    this.hpn = com.tencent.mm.ui.base.h.a(localContext1, this.context.getString(com.tencent.mm.n.bIl), true, null);
    ar.tZ().a(str2, new al(this, paramao));
    return true;
  }

  private boolean c(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper, ArrayList paramArrayList)
  {
    if (!paramJsapiPermissionWrapper.awm())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doGetLatestAddress permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    at.a(this.feu, "getLatestAddress", false, null);
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "doGetLatestAddress JSOAUTH");
    Object localObject = "";
    try
    {
      String str = this.feu.aoR();
      localObject = str;
      this.hps.a((String)localObject, "getLatestAddress", paramao, paramArrayList, new u(this, (String)localObject, paramao));
      return true;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getMessage();
        com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.MsgHandler", "JSOAUTH exception in get currentUrl %s", arrayOfObject);
      }
    }
  }

  private boolean d(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (!paramJsapiPermissionWrapper.awa())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doCloseWindow permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    try
    {
      Bundle localBundle = ao.r(paramao.dOk);
      this.feu.aoX();
      this.feu.n(localBundle);
      at.a(this.feu, "closeWindow", false, null);
      a(paramao, "close_window:ok", null);
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "doCloseWindow, ex = " + localException.getMessage());
    }
  }

  private boolean d(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper, ArrayList paramArrayList)
  {
    if (!paramJsapiPermissionWrapper.awG())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doGeoLocation permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    at.a(this.feu, "geoLocation", false, null);
    this.hpu = com.tencent.mm.pluginsdk.h.apt();
    if (this.hpu == null)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doGeoLocation fail, iGetLocation is null");
      a(paramao, "geo_location:fail", null);
      return true;
    }
    Object localObject = "";
    try
    {
      String str = this.feu.aoR();
      localObject = str;
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "doGeoLocation JSOAuth");
      this.hps.a((String)localObject, "geoLocation", paramao, paramArrayList, new w(this, paramao));
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "JSOAUTH exception in get currentUrl" + localException.getMessage());
    }
  }

  private boolean e(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (!paramJsapiPermissionWrapper.avL())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenProductView permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    at.a(this.feu, "openProductView", false, null);
    com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "doOpenProductView");
    String str1 = (String)paramao.dOk.get("productInfo");
    String str2 = (String)paramao.dOk.get("url");
    Object localObject = Integer.valueOf(0);
    try
    {
      Integer localInteger = Integer.valueOf(new JSONObject(str1).getInt("product_type"));
      localObject = localInteger;
      label108: Intent localIntent = new Intent();
      localIntent.putExtra("key_product_info", str1);
      localIntent.putExtra("key_source_url", str2);
      return a((Integer)localObject, 3, localIntent);
    }
    catch (Exception localException)
    {
      break label108;
    }
  }

  private boolean f(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (!paramJsapiPermissionWrapper.awA())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doLaunch3RdApp permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    at.a(this.feu, "launch3rdApp", false, null);
    String str1 = (String)paramao.dOk.get("type");
    if (!cj.hX(str1));
    int i;
    String str5;
    String str6;
    while (true)
    {
      try
      {
        int j = Integer.parseInt(str1);
        i = j;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doLaunch3RdApp launchType = %s", new Object[] { str1 });
        if (i != 0)
          break label338;
        str5 = (String)paramao.dOk.get("appID");
        str6 = (String)paramao.dOk.get("extInfo");
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doLaunch3RdApp, appid:[%s], extinfo:[%s]", new Object[] { str5, str6 });
        if (!cj.hX(str5))
          break;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "appid is null or nil");
        a(paramao, "launch_3rdApp:fail", null);
        return true;
      }
      catch (Exception localException2)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = localException2.getMessage();
        com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MsgHandler", "invalid type", arrayOfObject2);
      }
      i = 0;
    }
    if (!com.tencent.mm.plugin.webview.a.a.cHT.g(com.tencent.mm.sdk.platformtools.al.getContext(), str5))
    {
      com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MsgHandler", "app is not installed, appid:[%s]", new Object[] { str5 });
      a(paramao, "launch_3rdApp:fail", null);
      return true;
    }
    WXAppExtendObject localWXAppExtendObject = new WXAppExtendObject();
    localWXAppExtendObject.extInfo = str6;
    WXMediaMessage localWXMediaMessage = new WXMediaMessage(localWXAppExtendObject);
    localWXMediaMessage.sdkVer = 570490883;
    cy localcy = new cy();
    localcy.bNZ.bOa = localWXMediaMessage;
    localcy.bNZ.appId = str5;
    com.tencent.mm.sdk.b.a.ayH().f(localcy);
    a(paramao, "launch_3rdApp:ok", null);
    return true;
    label338: if (i == 1)
    {
      String str2 = (String)paramao.dOk.get("signature");
      String str3 = (String)paramao.dOk.get("packageName");
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doLaunch3RdApp, signature:[%s], packageName:[%s]", new Object[] { str2, str3 });
      if ((cj.hX(str2)) || (cj.hX(str3)))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doLaunch3RdApp invalid_args");
        a(paramao, "launch_3rdApp:fail_invalid_args", null);
        return true;
      }
      if (!com.tencent.mm.pluginsdk.model.app.u.g(this.context, str3))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doLaunch3RdApp not_install");
        a(paramao, "launch_3rdApp:fail_not_install", null);
        return true;
      }
      Signature[] arrayOfSignature = com.tencent.mm.pluginsdk.model.app.u.af(this.context, str3);
      if ((arrayOfSignature != null) && (arrayOfSignature[0] != null))
      {
        String str4 = com.tencent.mm.a.f.h(arrayOfSignature[0].toByteArray());
        if ((str4 != null) && (str4.equalsIgnoreCase(str2)))
          try
          {
            Intent localIntent = this.context.getPackageManager().getLaunchIntentForPackage(str3);
            if (localIntent != null)
            {
              Bundle localBundle = new Bundle();
              com.tencent.mm.pluginsdk.model.app.u.t(localBundle);
              localIntent.putExtras(localBundle);
              this.context.startActivity(localIntent);
              a(paramao, "launch_3rdApp:ok", null);
              return true;
            }
          }
          catch (Exception localException1)
          {
            Object[] arrayOfObject1 = new Object[1];
            arrayOfObject1[0] = localException1.getMessage();
            com.tencent.mm.sdk.platformtools.aa.b("MicroMsg.MsgHandler", "doLaunch3RdApp getLaunchIntentForPackage, %s", arrayOfObject1);
            a(paramao, "launch_3rdApp:fail", null);
            return true;
          }
      }
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doLaunch3RdApp signature_mismatch");
      a(paramao, "launch_3rdApp:fail_signature_mismatch", null);
      return true;
    }
    a(paramao, "launch_3rdApp:fail_invalid_type", null);
    return true;
  }

  private boolean g(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    if (!paramJsapiPermissionWrapper.awD())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenUrlByExtBrowser permission fail");
      a(paramao, "system:access_denied", null);
      return true;
    }
    at.a(this.feu, "openUrlByExtBrowser", false, null);
    String str = (String)paramao.dOk.get("url");
    if (cj.hX(str))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenUrlByExtBrowser fail, url is null");
      a(paramao, "open_url_by_ext_browser:fail", null);
      return true;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(str));
    localIntent.addFlags(268435456);
    try
    {
      this.context.startActivity(localIntent);
      a(paramao, "open_url_by_ext_browser:ok", null);
      return true;
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenUrlByExtBrowser fail, e = " + localException.getMessage());
      a(paramao, "open_url_by_ext_browser:fail", null);
    }
    return true;
  }

  private static void xR(String paramString)
  {
    if (hpq == null)
      hpq = new Bundle();
    int i = cj.getInt(paramString, 33);
    hpq.putInt("Contact_Scene", i);
  }

  private boolean xS(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "getFromMenu, functionName = " + paramString);
    if (this.hpp.contains(paramString))
    {
      this.hpp.remove(paramString);
      return true;
    }
    return false;
  }

  public final void a(Context paramContext, com.tencent.mm.plugin.webview.stub.ao paramao)
  {
    this.context = paramContext;
    if (this.hps != null)
      this.hps.setContext(paramContext);
    this.feu = paramao;
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    if (this.hpn != null)
      this.hpn.dismiss();
    if (paramBoolean1)
    {
      this.cQI.qI();
      be.uz().su().a(this.cQI.getUsername(), this.cQI);
      com.tencent.mm.ui.base.h.an(this.context, this.context.getResources().getString(com.tencent.mm.n.bIm));
      a(this.hpm, "add_contact:ok", null);
      return;
    }
    a(this.hpm, "add_contact:fail", null);
  }

  public final boolean a(ao paramao, JsapiPermissionWrapper paramJsapiPermissionWrapper, ArrayList paramArrayList)
  {
    if (this.dgb)
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "handleMsg, MsgHandler is busy, old msg will be overrided");
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = paramao.function;
    int i;
    if (paramArrayList == null)
    {
      i = 0;
      arrayOfObject1[1] = Integer.valueOf(i);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "handleMsg, msg function = %s, scopeList size = %d", arrayOfObject1);
      this.hpm = paramao;
      this.dgb = true;
      if (!paramao.type.equals("call"))
        break label6209;
      this.hpr = paramao.function;
      if (!paramao.function.equals("sendAppMessage"))
        break label1049;
      if (paramJsapiPermissionWrapper.avQ())
        break label134;
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doSendAppMessage permission fail");
      a(paramao, "system:access_denied", null);
    }
    while (true)
    {
      return true;
      i = paramArrayList.size();
      break;
      label134: String str40 = (String)paramao.dOk.get("link");
      if ((str40 == null) || (str40.length() == 0))
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "convert fail, link is null");
      WXMediaMessage localWXMediaMessage;
      for (Object localObject = null; ; localObject = localWXMediaMessage)
      {
        this.bOa = localObject;
        if (this.bOa != null)
          break label316;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doSendAppMsg fail, appmsg is null");
        a(paramao, "send_app_msg:fail", null);
        break;
        String str46 = com.tencent.mm.plugin.webview.b.e.pT(str40);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "rawurl:[%s], shareurl:[%s]", new Object[] { str40, str46 });
        WXWebpageObject localWXWebpageObject = new WXWebpageObject();
        localWXWebpageObject.webpageUrl = str46;
        localWXMediaMessage = new WXMediaMessage();
        localWXMediaMessage.mediaObject = localWXWebpageObject;
        localWXMediaMessage.title = ((String)paramao.dOk.get("title"));
        localWXMediaMessage.description = ((String)paramao.dOk.get("desc"));
      }
      label316: at.a(this.feu, "sendAppMessage", xS("sendAppMessage"), null);
      String str41 = aoZ().getString("scene");
      aoZ().remove("scene");
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "send appmsg scene is '%s'", new Object[] { str41 });
      if ("connector".equals(str41))
      {
        String str45 = aoZ().getString("connector_local_send");
        aoZ().remove("connector_local_send");
        aoZ().putString("connector_local_report", str45);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "directly send to %s", new Object[] { str45 });
        b(1, -1, new Intent().putExtra("Select_Conv_User", str45));
      }
      else
      {
        if ("favorite".equals(str41))
        {
          com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "favorite url");
          com.tencent.mm.c.a.x localx = new com.tencent.mm.c.a.x();
          com.tencent.mm.plugin.webview.b.b localb1 = new com.tencent.mm.plugin.webview.b.b();
          String str42 = (String)this.hpm.dOk.get("link");
          String str43 = com.tencent.mm.plugin.webview.b.e.pT(str42);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "rawurl:[%s], shareurl:[%s]", new Object[] { str42, str43 });
          localb1.url = str43;
          localb1.dqp = ((String)this.hpm.dOk.get("img_url"));
          localb1.title = ((String)this.hpm.dOk.get("title"));
          localb1.desc = ((String)this.hpm.dOk.get("desc"));
          localb1.bNG = ((String)this.hpm.dOk.get("appid"));
          int i4;
          label653: int i5;
          label681: String str44;
          if (!cj.hX(localb1.url))
          {
            i4 = 1;
            if (i4 != 0)
              break label751;
            com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.GetFavDataSource", "fill favorite event fail, event is null or wrapper is invalid");
            localx.bMl.type = com.tencent.mm.n.bkG;
            i5 = 0;
            if (i5 == 0)
              break label969;
            com.tencent.mm.sdk.b.a.ayH().f(localx);
            if (localx.bMm.ret != 0)
              break label947;
            com.tencent.mm.ui.base.h.an(this.context, this.context.getString(com.tencent.mm.n.bli));
            str44 = "send_app_msg:ok";
          }
          while (true)
          {
            a(this.hpm, str44, null);
            break;
            i4 = 0;
            break label653;
            label751: com.tencent.mm.protocal.a.fx localfx = new com.tencent.mm.protocal.a.fx();
            fy localfy = new fy();
            ft localft = new ft();
            localft.rD(localb1.url);
            localft.rx(localb1.title);
            localft.ry(localb1.desc);
            localft.rG(localb1.dqp);
            localft.axy();
            localft.axA();
            localfy.sa(com.tencent.mm.model.v.th());
            localfy.sb(com.tencent.mm.model.v.th());
            localfy.ls(3);
            localfy.bM(cj.FD());
            localfy.sg(localb1.bNG);
            localfy.sh(localb1.url);
            localx.bMl.title = localft.getTitle();
            localx.bMl.bMn = localfx;
            localx.bMl.type = 5;
            localfx.a(localfy);
            localfx.fHP.add(localft);
            i5 = 1;
            break label681;
            label947: com.tencent.mm.ui.base.h.c(this.context, com.tencent.mm.n.bkN, com.tencent.mm.n.bkF);
            str44 = "send_app_msg:fail";
            continue;
            label969: com.tencent.mm.ui.base.h.c(this.context, com.tencent.mm.n.bkN, com.tencent.mm.n.bkF);
            str44 = "send_app_msg:fail";
          }
        }
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "select user to send");
        Intent localIntent9 = new Intent();
        localIntent9.putExtra("Select_Conv_Type", 3);
        if ((this.context instanceof MMActivity))
          com.tencent.mm.plugin.webview.a.a.cHS.a(localIntent9, this, (MMActivity)this.context);
      }
    }
    label1049: if (paramao.function.equals("profile"))
    {
      String str39 = (String)paramao.dOk.get("username");
      xR((String)paramao.dOk.get("scene"));
      return a(str39, paramJsapiPermissionWrapper);
    }
    if (paramao.function.equals("shareWeibo"))
      return a(paramao, paramJsapiPermissionWrapper);
    if (paramao.function.equals("shareTimeline"))
      return b(paramao, paramJsapiPermissionWrapper);
    if (paramao.function.equals("addContact"))
      return c(paramao, paramJsapiPermissionWrapper);
    if (paramao.function.equals("imagePreview"))
    {
      if (!paramJsapiPermissionWrapper.avJ())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doImgPreview permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      String str38 = (String)paramao.dOk.get("current");
      String[] arrayOfString = (String[])paramao.dOk.get("urls");
      if ((arrayOfString == null) || (arrayOfString.length == 0))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doImgPreview fail, urls is null");
        this.dgb = false;
        return false;
      }
      at.a(this.feu, "imagePreview", false, null);
      if ((str38 == null) || (str38.length() == 0))
        str38 = arrayOfString[0];
      Intent localIntent8 = new Intent();
      localIntent8.putExtra("nowUrl", str38);
      localIntent8.putExtra("urlList", arrayOfString);
      localIntent8.putExtra("type", -255);
      if ((this.context instanceof Service))
        localIntent8.addFlags(268435456);
      com.tencent.mm.plugin.webview.a.a.cHS.p(localIntent8, this.context);
      this.dgb = false;
      return false;
    }
    if (paramao.function.equals("log"))
    {
      if (!paramJsapiPermissionWrapper.avI())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doLog permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "log", false, null);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "jslog : " + paramao.dOk.get("msg"));
      this.dgb = false;
      return false;
    }
    if (paramao.function.equals("addEmoticon"))
    {
      if (!paramJsapiPermissionWrapper.avS())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddEmoticon permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      if (com.tencent.mm.pluginsdk.h.apj().KS())
      {
        com.tencent.mm.ui.base.h.a(this.context, this.context.getString(com.tencent.mm.n.bjU), "", null).setOnDismissListener(new r(this, paramao));
        return true;
      }
      String str35 = (String)paramao.dOk.get("url");
      String str36 = (String)paramao.dOk.get("thumb_url");
      String str37 = (String)paramao.dOk.get("appid");
      if ((cj.hX(str35)) || (cj.hX(str36)))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddEmotIcon fail,invalid arguments,no EmotUrl or thumb_url");
        a(paramao, "add_emoticon:no_url", null);
        return true;
      }
      if ((this.map != null) && (this.map.containsKey(str35)))
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "doAddEmotIcon ing,wait emotUrl : " + str35);
        this.dgb = false;
        return false;
      }
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "doAddEmotIcon begin");
      if (this.map == null)
        this.map = new HashMap();
      at.a(this.feu, "addEmoticon", false, null);
      b localb = new b(this.feu, paramao, str35, str36, str37);
      localb.a(new s(this, str35));
      localb.start();
      this.map.put(str35, localb);
      return true;
    }
    if (paramao.function.equals("hasEmoticon"))
    {
      if (!paramJsapiPermissionWrapper.avT())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doHasEmoticon permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      String str34 = (String)paramao.dOk.get("url");
      if (cj.hX(str34))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doHasEmotIcon fail,invalid arguments,EmotUrl =" + str34);
        this.dgb = false;
        return false;
      }
      at.a(this.feu, "hasEmoticon", false, null);
      if (com.tencent.mm.pluginsdk.h.apj().jc(str34))
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "has_emoticon:yes url : " + str34);
        a(paramao, "has_emoticon:yes", null);
        return true;
      }
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "has_emoticon:no url : " + str34);
      a(paramao, "has_emoticon:no", null);
      return true;
    }
    if (paramao.function.equals("cancelAddEmoticon"))
    {
      if (!paramJsapiPermissionWrapper.avU())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doCancelAddEmoticon permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      String str33 = (String)paramao.dOk.get("url");
      if (cj.hX(str33))
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doCancelEmoticon fail,invalid arguments,EmotUrl =" + str33);
        a(paramao, "cancel_add_emoticon:no_url", null);
        return true;
      }
      at.a(this.feu, "cancelAddEmoticon", false, null);
      com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "cancel_add_emoticon:try...emotUrl is " + str33);
      if (com.tencent.mm.pluginsdk.h.apj().jc(str33))
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "cancel_add_emoticon:added");
        a(paramao, "cancel_add_emoticon:added", null);
        return true;
      }
      if ((this.map == null) || (!this.map.containsKey(str33)))
      {
        com.tencent.mm.sdk.platformtools.aa.v("MicroMsg.MsgHandler", "cancel_add_emoticon:fail");
        a(paramao, "cancel_add_emoticon:fail", null);
        return true;
      }
      ((b)this.map.get(str33)).interrupt();
      return true;
    }
    if (paramao.function.equals("hideOptionMenu"))
      return a(false, paramJsapiPermissionWrapper);
    if (paramao.function.equals("showOptionMenu"))
      return a(true, paramJsapiPermissionWrapper);
    if (paramao.function.equals("hideToolbar"))
      return b(false, paramJsapiPermissionWrapper);
    if (paramao.function.equals("showToolbar"))
      return b(true, paramJsapiPermissionWrapper);
    if (paramao.function.equals("getNetworkType"))
    {
      if (!paramJsapiPermissionWrapper.avZ())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doGetNetworkType permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      if (!ba.bk(this.context))
      {
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "getNetworkType, not connected");
        a(paramao, "network_type:fail", null);
        return true;
      }
      at.a(this.feu, "getNetworkType", false, null);
      int i3 = ba.aK(this.context);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "getNetworkType, type = " + i3);
      if ((ba.bp(this.context)) || (ba.bs(this.context)))
      {
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "getNetworkType, 2g or 3g");
        a(paramao, "network_type:wwan", null);
        return true;
      }
      if (ba.bt(this.context))
      {
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "getNetworkType, wifi");
        a(paramao, "network_type:wifi", null);
        return true;
      }
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "getNetworkType, unknown");
      a(paramao, "network_type:fail", null);
      return true;
    }
    if (paramao.function.equals("closeWindow"))
      return d(paramao, paramJsapiPermissionWrapper);
    if (paramao.function.equals("getInstallState"))
    {
      if (!paramJsapiPermissionWrapper.awi())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doGetInstallState permission fail");
        a(paramao, "system:access_denied", null);
      }
      while (true)
      {
        return true;
        String str32 = (String)paramao.dOk.get("packageName");
        PackageInfo localPackageInfo = com.tencent.mm.pluginsdk.model.app.u.ad(this.context, str32);
        at.a(this.feu, "getInstallState", false, str32);
        if (localPackageInfo == null);
        for (int i2 = 0; ; i2 = localPackageInfo.versionCode)
        {
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doGetInstallState, packageName = " + str32 + ", packageInfo = " + localPackageInfo + ", version = " + i2);
          if (localPackageInfo != null)
            break label2654;
          a(paramao, "get_install_state:no", null);
          break;
        }
        label2654: a(paramao, "get_install_state:yes_" + i2, null);
      }
    }
    if (paramao.function.equals("scanQRCode"))
    {
      if (!paramJsapiPermissionWrapper.avR())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doScanQRCode permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "scanQRCode", false, null);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doScanQRCode, startActivity to GetFriendQRCodeUI");
      Intent localIntent7 = new Intent();
      localIntent7.putExtra("BaseScanUI_select_scan_mode", 1);
      com.tencent.mm.ak.a.a(this.context, "scanner", ".ui.BaseScanUI", localIntent7, false);
      a(paramao, "scan_qrcode:ok", null);
      return true;
    }
    if (paramao.function.equals("setFontSizeCallback"))
      return a(paramao);
    if (paramao.function.equals("jumpToInstallUrl"))
    {
      if (!paramJsapiPermissionWrapper.awj())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doJumpToInstallUrl permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "jumpToInstallUrl", false, null);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doJumpToInstallUrl");
      String str31 = (String)paramao.dOk.get("url");
      if (cj.hX(str31))
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "jumpurl is null or nil");
      while (true)
      {
        this.dgb = false;
        return false;
        Intent localIntent6 = new Intent("android.intent.action.VIEW", Uri.parse(str31));
        localIntent6.addFlags(268435456);
        if (cj.i(this.context, localIntent6))
          this.context.startActivity(localIntent6);
      }
    }
    if (paramao.function.equalsIgnoreCase("GetBrandWCPayRequest"))
    {
      if (!paramJsapiPermissionWrapper.awk())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doPay permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "GetBrandWCPayRequest", false, null);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "doPay");
      String str22 = (String)paramao.dOk.get("appId");
      String str23 = (String)paramao.dOk.get("partnerId");
      String str24 = (String)paramao.dOk.get("signType");
      String str25 = (String)paramao.dOk.get("nonceStr");
      String str26 = (String)paramao.dOk.get("timeStamp");
      String str27 = (String)paramao.dOk.get("package");
      String str28 = (String)paramao.dOk.get("paySign");
      String str29 = (String)paramao.dOk.get("url");
      String str30 = (String)paramao.dOk.get("src_username");
      int m = cj.getInt((String)paramao.dOk.get("message_id"), 0);
      int n = cj.getInt((String)paramao.dOk.get("message_index"), 0);
      int i1 = cj.getInt((String)paramao.dOk.get("scene"), 0);
      Intent localIntent5 = new Intent();
      localIntent5.putExtra("appId", str22);
      localIntent5.putExtra("partnerId", str23);
      localIntent5.putExtra("signtype", str24);
      localIntent5.putExtra("nonceStr", str25);
      localIntent5.putExtra("timeStamp", str26);
      localIntent5.putExtra("packageExt", str27);
      localIntent5.putExtra("paySignature", str28);
      localIntent5.putExtra("bizUsername", str30);
      localIntent5.putExtra("url", str29);
      localIntent5.putExtra("pay_channel", cj.getInt((String)paramao.dOk.get("pay_channel"), 0));
      if ((this.context instanceof MMActivity))
      {
        ((MMActivity)this.context).a(this);
        com.tencent.mm.ak.a.a(this.context, "wallet", ".pay.ui.WalletBrandUI", localIntent5, 4, false);
      }
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject5 = new Object[6];
      arrayOfObject5[0] = str30;
      arrayOfObject5[1] = str22;
      arrayOfObject5[2] = Integer.valueOf(m);
      arrayOfObject5[3] = Integer.valueOf(n);
      arrayOfObject5[4] = Integer.valueOf(i1);
      arrayOfObject5[5] = str29;
      localm.d(10593, arrayOfObject5);
      return true;
    }
    if (paramao.function.equalsIgnoreCase("editAddress"))
      return b(paramao, paramJsapiPermissionWrapper, paramArrayList);
    if (paramao.function.equalsIgnoreCase("getLatestAddress"))
      return c(paramao, paramJsapiPermissionWrapper, paramArrayList);
    if (paramao.function.equalsIgnoreCase("getHeadingAndPitch"))
    {
      if (!paramJsapiPermissionWrapper.awn())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doGetHeadingAndPitch permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "getHeadingAndPitch", false, null);
      HashMap localHashMap3 = new HashMap();
      if (com.tencent.mm.pluginsdk.ui.tools.n.fuv == null)
      {
        com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MsgHandler", "HeadingPitchSensorMgr.instance == null, init here");
        com.tencent.mm.pluginsdk.ui.tools.n localn = new com.tencent.mm.pluginsdk.ui.tools.n();
        y.a(localn);
        com.tencent.mm.pluginsdk.ui.tools.n.fuv = localn;
        localn.ba(this.context);
      }
      localHashMap3.put("heading", Integer.valueOf(com.tencent.mm.pluginsdk.ui.tools.n.fuv.auO()));
      localHashMap3.put("pitch", Integer.valueOf(com.tencent.mm.pluginsdk.ui.tools.n.fuv.getPitch()));
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Integer.valueOf(com.tencent.mm.pluginsdk.ui.tools.n.fuv.auO());
      arrayOfObject4[1] = Integer.valueOf(com.tencent.mm.pluginsdk.ui.tools.n.fuv.getPitch());
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doGetHeadingAndPitch, heading=[%s], pitch=[%s]", arrayOfObject4);
      a(paramao, "get_heading_and_pitch:ok", localHashMap3);
      return true;
    }
    if (paramao.function.equalsIgnoreCase("sendEmail"))
    {
      if (!paramJsapiPermissionWrapper.awo())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doSendMail permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "sendEmail", xS("sendEmail"), null);
      String str20 = (String)paramao.dOk.get("title");
      String str21 = (String)paramao.dOk.get("content");
      Intent localIntent4 = new Intent();
      localIntent4.putExtra("composeType", 1);
      localIntent4.putExtra("subject", str20);
      localIntent4.putExtra("mail_content", str21);
      com.tencent.mm.ak.a.a(this.context, "qqmail", ".ui.ComposeUI", localIntent4, false);
      a(paramao, "send_email:ok", null);
      return true;
    }
    if (paramao.function.equalsIgnoreCase("addDownloadTask"))
    {
      if (!paramJsapiPermissionWrapper.awq())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddDownloadTask permission fail");
        a(paramao, "system:access_denied", null);
      }
      while (true)
      {
        return true;
        at.a(this.feu, "addDownloadTask", false, null);
        String str17 = (String)paramao.dOk.get("task_name");
        String str18 = (String)paramao.dOk.get("task_url");
        String str19 = (String)paramao.dOk.get("file_md5");
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doAddDownloadTask, md5 = " + str19 + ", url = " + str18);
        if ((str19 == null) || (str19.trim().length() == 0))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddDownloadTask fail, md5 is null");
          a(paramao, "add_download_task:fail_invalid_md5", null);
        }
        else if (!be.uz().isSDCardAvailable())
        {
          a(paramao, "add_download_task:fail_sdcard_not_ready", null);
        }
        else
        {
          if ((!be.se()) || (be.uG()));
          for (long l4 = FileDownloadManger.d(this.context, str18, str17, str19); ; l4 = FileDownloadManger.s(str18, str17, str19))
          {
            com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doAddDownloadTask, downloadId = " + l4);
            if (l4 > 0L)
              break label4173;
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doAddDownloadTask fail, downloadId = " + l4);
            a(paramao, "add_download_task:fail", null);
            break;
          }
          label4173: HashMap localHashMap2 = new HashMap();
          localHashMap2.put("download_id", Long.valueOf(l4));
          a(paramao, "add_download_task:ok", localHashMap2);
        }
      }
    }
    if (paramao.function.equalsIgnoreCase("cancelDownloadTask"))
    {
      if (!paramJsapiPermissionWrapper.awr())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doCancelDownloadTask permission fail");
        a(paramao, "system:access_denied", null);
      }
      while (true)
      {
        return true;
        at.a(this.feu, "cancelDownloadTask", false, null);
        long l3 = cj.getLong((String)paramao.dOk.get("download_id"), -1L);
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doCancelDownloadTask, downloadId = " + l3);
        if (l3 <= 0L)
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doCancelDownloadTask fail, invalid downloadId = " + l3);
          a(paramao, "cancel_download_task:fail", null);
        }
        else
        {
          int k = FileDownloadManger.bA(l3);
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doCancelDownloadTask, ret = " + k);
          if (k == -1)
            a(paramao, "cancel_download_task:fail_apilevel_too_low", null);
          else if (k <= 0)
            a(paramao, "cancel_download_task:fail", null);
          else
            a(paramao, "cancel_download_task:ok", null);
        }
      }
    }
    if (paramao.function.equalsIgnoreCase("queryDownloadTask"))
    {
      if (!paramJsapiPermissionWrapper.aws())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doQueryDownloadTask permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "queryDownloadTask", false, null);
      long l2 = cj.getLong((String)paramao.dOk.get("download_id"), -1L);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doQueryDownloadTask, downloadId = " + l2);
      if (l2 <= 0L)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doQueryDownloadTask fail, invalid downloadId = " + l2);
        a(paramao, "query_download_task:fail", null);
        return true;
      }
      String str16;
      switch (FileDownloadManger.g(this.context, l2).status)
      {
      default:
        str16 = "default";
      case -1:
      case 1:
      case 2:
      case 8:
      case 16:
      }
      while (true)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doQueryDownloadTask, state = " + str16);
        HashMap localHashMap1 = new HashMap();
        localHashMap1.put("state", str16);
        a(paramao, "query_download_task:ok", localHashMap1);
        return true;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doQueryDownloadTask fail, api not support");
        a(paramao, "query_download_task:fail_apilevel_too_low", null);
        return true;
        str16 = "downloading";
        continue;
        if (FileDownloadManger.bw(l2))
        {
          str16 = "download_succ";
        }
        else
        {
          str16 = "default";
          continue;
          str16 = "download_fail";
        }
      }
    }
    if (paramao.function.equalsIgnoreCase("installDownloadTask"))
    {
      if (!paramJsapiPermissionWrapper.awt())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doInstallDownloadTask permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "installDownloadTask", false, null);
      long l1 = cj.getLong((String)paramao.dOk.get("download_id"), -1L);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "doInstallDownloadTask, downloadId = " + l1);
      if (l1 <= 0L)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doInstallDownloadTask fail, invalid downloadId = " + l1);
        a(paramao, "install_download_task:fail", null);
        return true;
      }
      com.tencent.mm.pluginsdk.model.downloader.e locale = FileDownloadManger.g(this.context, l1);
      if (locale.status == -1)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doInstallDownloadTask fail, apilevel not supported");
        a(paramao, "install_download_task:fail_apilevel_too_low", null);
        return true;
      }
      if (locale.status != 8)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doInstallDownloadTask fail, invalid status = " + locale.status);
        a(paramao, "install_download_task:fail", null);
        return true;
      }
      FileDownloadManger.a(l1, new v(this, paramao, locale));
      return true;
    }
    if (paramao.function.equalsIgnoreCase("openSpecificView"))
    {
      if (!paramJsapiPermissionWrapper.awz())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenSpecificView permission fail");
        a(paramao, "system:access_denied", null);
      }
      while (true)
      {
        return true;
        at.a(this.feu, "openSpecificView", false, null);
        String str15 = (String)paramao.dOk.get("specificview");
        if (cj.hX(str15))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenSpecificView fail, invalid specificview");
          a(paramao, "specific_view:fail", null);
        }
        else
        {
          new Intent().addFlags(268435456);
          boolean bool2 = com.tencent.mm.plugin.webview.a.a.cHS.j(this.context, str15);
          Object[] arrayOfObject3 = new Object[2];
          arrayOfObject3[0] = str15;
          arrayOfObject3[1] = Boolean.valueOf(bool2);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenSpecificView, targetView = %s, ret = %b", arrayOfObject3);
          if (bool2)
          {
            a(paramao, "specific_view:ok", null);
          }
          else
          {
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenSpecificView, targetView not supported in current wechat version");
            a(paramao, "specific_view:not_supported", null);
          }
        }
      }
    }
    if (paramao.function.equalsIgnoreCase("launch3rdApp"))
      return f(paramao, paramJsapiPermissionWrapper);
    if (paramao.function.equalsIgnoreCase("jumpWCMall"))
    {
      if (!paramJsapiPermissionWrapper.awC())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doJumpToMall permission fail");
        a(paramao, "system:access_denied", null);
      }
      while (true)
      {
        return true;
        at.a(this.feu, "jumpWCMall", false, null);
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "doJumpToMall");
        String str12 = (String)paramao.dOk.get("appId");
        String str13 = (String)paramao.dOk.get("funcId");
        String str14 = (String)paramao.dOk.get("url");
        Intent localIntent3 = new Intent();
        localIntent3.putExtra("key_app_id", str12);
        localIntent3.putExtra("key_func_id", str13);
        localIntent3.putExtra("key_url", str14);
        if ((this.context instanceof MMActivity))
        {
          ((MMActivity)this.context).a(this);
          com.tencent.mm.ak.a.a(this.context, "mall", ".ui.MallIndexUI", localIntent3, 5, false);
        }
      }
    }
    if (paramao.function.equalsIgnoreCase("writeCommData"))
    {
      if (!paramJsapiPermissionWrapper.awB())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doWriteCommData permission fail");
        a(paramao, "system:access_denied", null);
      }
      String str10;
      while (true)
      {
        return true;
        at.a(this.feu, "writeCommData", false, null);
        str10 = (String)paramao.dOk.get("packageName");
        if (!cj.hX(str10))
          break;
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doWriteCommData fail, packageName is null");
        label5482: a(paramao, "write_comm_data:fail", null);
      }
      String str11 = (String)paramao.dOk.get("data");
      boolean bool1 = this.context.getSharedPreferences(com.tencent.mm.sdk.platformtools.al.getPackageName() + "_comm_preferences", 0).edit().putString(str10, str11).commit();
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Boolean.valueOf(bool1);
      arrayOfObject2[1] = str10;
      if (str11 == null);
      for (int j = 0; ; j = str11.length())
      {
        arrayOfObject2[2] = Integer.valueOf(j);
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doWriteCommData, ret = %b, packageName = %s, data length = %d", arrayOfObject2);
        if (!bool1)
          break label5482;
        a(paramao, "write_comm_data:ok", null);
        break;
      }
    }
    if (paramao.function.equalsIgnoreCase("openUrlByExtBrowser"))
      return g(paramao, paramJsapiPermissionWrapper);
    if (paramao.function.equalsIgnoreCase("openProductView"))
      return e(paramao, paramJsapiPermissionWrapper);
    if (paramao.function.equalsIgnoreCase("openProductViewWithPid"))
    {
      if (!paramJsapiPermissionWrapper.avM())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doOpenProductViewWithPid permission fail");
        a(paramao, "system:access_denied", null);
        return true;
      }
      at.a(this.feu, "openProductViewWithPid", false, null);
      com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "doOpenProductViewWithPid");
      String str8 = (String)paramao.dOk.get("pid");
      String str9 = (String)paramao.dOk.get("url");
      Integer localInteger = Integer.valueOf(cj.getInt((String)paramao.dOk.get("type"), 0));
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("key_product_id", str8);
      localIntent2.putExtra("key_source_url", str9);
      return a(localInteger, 8, localIntent2);
    }
    if (paramao.function.equalsIgnoreCase("getBrandWCPayBindCardRequest"))
    {
      if (!paramJsapiPermissionWrapper.awF())
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "dogetBrandWCPayBindCardRequest permission fail");
        a(paramao, "system:access_denied", null);
      }
      while (true)
      {
        return true;
        at.a(this.feu, "getBrandWCPayBindCardRequest", false, null);
        com.tencent.mm.sdk.platformtools.aa.i("MicroMsg.MsgHandler", "dogetBrandWCPayBindCardRequest JSOAUTH");
        String str1 = (String)paramao.dOk.get("appId");
        String str2 = (String)paramao.dOk.get("timeStamp");
        String str3 = (String)paramao.dOk.get("nonceStr");
        String str4 = (String)paramao.dOk.get("package");
        String str5 = (String)paramao.dOk.get("signType");
        String str6 = (String)paramao.dOk.get("paySign");
        String str7 = (String)paramao.dOk.get("url");
        Intent localIntent1 = new Intent();
        localIntent1.putExtra("appId", str1);
        localIntent1.putExtra("timeStamp", str2);
        localIntent1.putExtra("nonceStr", str3);
        localIntent1.putExtra("packageExt", str4);
        localIntent1.putExtra("signtype", str5);
        localIntent1.putExtra("paySignature", str6);
        localIntent1.putExtra("url", str7);
        localIntent1.putExtra("intent_bind_scene", 4);
        if ((this.context instanceof MMActivity))
        {
          ((MMActivity)this.context).a(this);
          com.tencent.mm.ak.a.a(this.context, "wallet", ".bind.ui.WalletBindUI", localIntent1, 7, false);
        }
      }
    }
    if (paramao.function.equalsIgnoreCase("geoLocation"))
      return d(paramao, paramJsapiPermissionWrapper, paramArrayList);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "unknown function = " + paramao.function);
    a(paramao, "system:function_not_exist", null);
    return true;
    label6209: com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "unknown type = " + paramao.type);
    this.dgb = false;
    return false;
  }

  public final boolean a(String paramString, JsapiPermissionWrapper paramJsapiPermissionWrapper)
  {
    int i = 42;
    if (!paramJsapiPermissionWrapper.avK())
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doProfile permission fail");
      a(this.hpm, "system:access_denied", null);
      return true;
    }
    if ((paramString == null) || (paramString.length() == 0))
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "doProfile fail, username is null");
      this.dgb = false;
      return false;
    }
    if (cj.hX(paramString))
    {
      Context localContext2 = com.tencent.mm.sdk.platformtools.al.getContext();
      Context localContext3 = this.context;
      int j = com.tencent.mm.n.bnm;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(3);
      arrayOfObject[1] = Integer.valueOf(-1);
      Toast.makeText(localContext2, localContext3.getString(j, arrayOfObject), 0).show();
      this.dgb = false;
      return false;
    }
    at.a(this.feu, "profile", xS("profile"), paramString);
    com.tencent.mm.storage.i locali = be.uz().su().tO(paramString);
    if ((locali == null) || (locali.rj() <= 0))
      locali = be.uz().su().tL(paramString);
    if ((locali != null) && (locali.rj() > 0))
    {
      Intent localIntent = new Intent();
      localIntent.addFlags(268435456);
      localIntent.putExtra("Contact_User", locali.getUsername());
      if (locali.aAp())
        if (hpq != null)
          break label361;
      while (true)
      {
        com.tencent.mm.plugin.d.c.m.dZN.j(10298, locali.getUsername() + "," + i);
        localIntent.putExtra("Contact_Scene", i);
        if (locali.rb())
        {
          fz localfz = new fz();
          localfz.bQx.intent = localIntent;
          localfz.bQx.username = locali.getUsername();
          com.tencent.mm.sdk.b.a.ayH().f(localfz);
        }
        com.tencent.mm.plugin.webview.a.a.cHS.c(localIntent, this.context);
        this.dgb = false;
        return false;
        label361: i = hpq.getInt("Contact_Scene", i);
      }
    }
    ar.tZ().a(paramString, new q(this));
    Context localContext1 = this.context;
    this.context.getString(com.tencent.mm.n.ber);
    this.cIr = com.tencent.mm.ui.base.h.a(localContext1, this.context.getString(com.tencent.mm.n.beu), true, new ab(this, paramString));
    return true;
  }

  public final void b(int paramInt1, int paramInt2, Intent paramIntent)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "mmOnActivityResult, requestCode = " + paramInt1 + ", resultCode = " + paramInt2);
    if (paramInt1 == 1)
      if (this.bOa == null)
      {
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "mmOnActivityResult fail, appmsg is null");
        a(this.hpm, "send_app_msg:fail", null);
      }
    do
    {
      String str9;
      com.tencent.mm.pluginsdk.model.app.k localk;
      String str10;
      String str11;
      String str13;
      String str14;
      String str15;
      ce localce;
      do
      {
        return;
        str9 = (String)this.hpm.dOk.get("appid");
        switch (paramInt2)
        {
        default:
          return;
        case -1:
          localk = l.F(str9, true);
          if (paramIntent != null)
            break;
        case 0:
        }
        for (str10 = null; (str10 == null) || (str10.length() == 0); str10 = paramIntent.getStringExtra("Select_Conv_User"))
        {
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "mmOnActivityResult fail, toUser is null");
          a(this.hpm, "send_app_msg:fail", null);
          return;
          a(this.hpm, "send_app_msg:cancel", null);
          return;
        }
        str11 = (String)this.hpm.dOk.get("img_url");
        String str12 = (String)this.hpm.dOk.get("desc");
        str13 = (String)this.hpm.dOk.get("src_username");
        str14 = (String)this.hpm.dOk.get("src_displayname");
        str15 = aoZ().getString("connector_local_report");
        aoZ().remove("connector_local_report");
        if (!cj.hX(str15))
          break;
        boolean bool = this.context instanceof MMActivity;
        localce = null;
        if (bool)
          localce = com.tencent.mm.pluginsdk.ui.applet.i.a((MMActivity)this.context, this.bOa.title, str11, str12, this.context.getResources().getString(com.tencent.mm.n.bel), new z(this, localk, str9, str10, str11, str13, str14, str15));
      }
      while (localce != null);
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "mmOnActivityResult fail, cannot show dialog");
      a(this.hpm, "send_app_msg:fail", null);
      return;
      if (cj.hX(str11))
      {
        a(localk, str9, str10, str11, str13, str14, null, str15);
        com.tencent.mm.ui.base.h.an(this.context, this.context.getString(com.tencent.mm.n.bej));
        a(this.hpm, "send_app_msg:ok", null);
        return;
      }
      ch localch = com.tencent.mm.ui.base.h.a(this.context, this.context.getResources().getString(com.tencent.mm.n.bem), true, new aa(this, str11));
      ag.AZ().a(str11, new ac(this, localch, localk, str9, str10, str11, str13, str14, str15));
      return;
      if (paramInt1 == 2)
      {
        switch (paramInt2)
        {
        default:
          a(this.hpm, "share_weibo:fail_" + paramIntent.getIntExtra("err_code", 0), null);
          com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MsgHandler", "unknown resultCode");
          return;
        case -1:
          com.tencent.mm.ui.base.h.an(this.context, this.context.getResources().getString(com.tencent.mm.n.beq));
          a(this.hpm, "share_weibo:ok", null);
          return;
        case 0:
          a(this.hpm, "share_weibo:cancel", null);
          return;
        case 1:
        }
        a(this.hpm, "share_weibo:fail_" + paramIntent.getIntExtra("err_code", 0), null);
        return;
      }
      if (paramInt1 == 3)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "get callback address");
        if ((paramInt2 == -1) && (paramIntent != null))
        {
          String str1 = cj.R(paramIntent.getStringExtra("nationalCode"), "");
          String str2 = cj.R(paramIntent.getStringExtra("userName"), "");
          String str3 = cj.R(paramIntent.getStringExtra("telNumber"), "");
          String str4 = cj.R(paramIntent.getStringExtra("addressPostalCode"), "");
          String str5 = cj.R(paramIntent.getStringExtra("proviceFirstStageName"), "");
          String str6 = cj.R(paramIntent.getStringExtra("addressCitySecondStageName"), "");
          String str7 = cj.R(paramIntent.getStringExtra("addressCountiesThirdStageName"), "");
          String str8 = cj.R(paramIntent.getStringExtra("addressDetailInfo"), "");
          com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "first =  " + str5 + " ; detail =" + str8 + "; second = " + str6 + " ; tel = " + str3 + "; third = " + str7);
          if (!cj.hX(str2))
          {
            HashMap localHashMap = new HashMap();
            localHashMap.put("nationalCode", str1);
            localHashMap.put("userName", str2);
            localHashMap.put("telNumber", str3);
            localHashMap.put("addressPostalCode", str4);
            localHashMap.put("proviceFirstStageName", str5);
            localHashMap.put("addressCitySecondStageName", str6);
            localHashMap.put("addressCountiesThirdStageName", str7);
            localHashMap.put("addressDetailInfo", str8);
            a(this.hpm, "edit_address:ok", localHashMap);
            return;
          }
        }
        a(this.hpm, "edit_address:fail", null);
        return;
      }
      if (paramInt1 == 4)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "request pay, resultCode = " + paramInt2);
        if (paramInt2 == -1)
        {
          a(this.hpm, "get_brand_wcpay_request:ok", null);
          return;
        }
        a(this.hpm, "get_brand_wcpay_request:cancel", null);
        return;
      }
      if (paramInt1 == 5)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "request jump to mall, resultCode = " + paramInt2);
        if (paramInt2 == -1)
        {
          a(this.hpm, "jump_wcmall:ok", null);
          return;
        }
        a(this.hpm, "jump_wcmall:fail", null);
        return;
      }
      if (paramInt1 == 6)
      {
        com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "request jump to product view, resultCode = " + paramInt2);
        if (paramInt2 == -1)
        {
          a(this.hpm, "open_product_view:ok", null);
          return;
        }
        a(this.hpm, "open_product_view:fail", null);
        return;
      }
    }
    while (paramInt1 != 7);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "request bind card, resultCode = " + paramInt2);
    if (paramInt2 == -1)
    {
      a(this.hpm, "get_brand_WCPay_bind_card_request:ok", null);
      return;
    }
    a(this.hpm, "get_brand_WCPay_bind_card_request:fail", null);
  }

  public final void detach()
  {
    this.context = null;
    this.feu = null;
    if (this.hps != null)
      this.hps.detach();
  }

  public final void ei(String paramString)
  {
    int i = 1;
    int j;
    if (this.cQI != null)
      if ((this.cQI.getUsername() != null) && (this.cQI.getUsername().equals(paramString)))
      {
        j = i;
        if ((this.cQI.rp() == null) || (!this.cQI.rp().equals(paramString)))
          break label73;
        label59: if ((j != 0) || (i != 0))
          break label96;
      }
    label73: label96: 
    while ((this.hpo == null) || (!this.hpo.isShowing()))
      do
      {
        return;
        j = 0;
        break;
        i = 0;
        break label59;
      }
      while ((this.hpt == null) || (!this.hpt.equals(paramString)));
    com.tencent.mm.sdk.platformtools.an.i(new ae(this));
  }

  public final boolean isBusy()
  {
    return this.dgb;
  }

  public final void pZ(String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.MsgHandler", "setFromMenu, functionName = " + paramString + ", clear isBusy state");
    this.dgb = false;
    if (!this.hpp.contains(paramString))
      this.hpp.add(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.p
 * JD-Core Version:    0.6.2
 */