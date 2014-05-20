package com.tencent.mm.plugin.webview.stub;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.mm.c.a.co;
import com.tencent.mm.c.a.ew;
import com.tencent.mm.c.a.ey;
import com.tencent.mm.c.a.gd;
import com.tencent.mm.c.a.gf;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.model.app.l;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ce;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.tools.WebViewStubCallbackWrapper;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class m extends am
{
  m(WebViewStubService paramWebViewStubService)
  {
  }

  private static boolean p(Bundle paramBundle)
  {
    String str = paramBundle.getString("geta8key_data_req_url");
    if (!cj.hX(str));
    for (com.tencent.mm.modelsimple.x localx = new com.tencent.mm.modelsimple.x(str, paramBundle.getString("geta8key_data_username"), paramBundle.getInt("geta8key_data_scene"), paramBundle.getInt("geta8key_data_reason")); ; localx = new com.tencent.mm.modelsimple.x(paramBundle.getString("geta8key_data_appid"), paramBundle.getString("geta8key_data_scope"), paramBundle.getString("geta8key_data_state")))
      return be.uA().d(localx);
  }

  public final boolean C(String paramString, boolean paramBoolean)
  {
    com.tencent.mm.pluginsdk.ad localad = h.b(this.feJ, null);
    if (localad != null)
      return localad.a(this.feJ, paramString, paramBoolean);
    return false;
  }

  public final void D(String paramString, boolean paramBoolean)
  {
    com.tencent.mm.pluginsdk.ad localad = h.b(this.feJ, null);
    if (localad != null)
      localad.b(this.feJ, paramString, paramBoolean);
  }

  public final String Dj()
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getToolsPath, needSetUin = " + bool);
    if (bool)
      return (String)new t(this).b(WebViewStubService.a(this.feJ));
    return com.tencent.mm.ag.a.Dj();
  }

  public final boolean HB()
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "hasSetUin, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new ac(this, Boolean.valueOf(false)).b(WebViewStubService.a(this.feJ))).booleanValue();
    return be.se();
  }

  public final void a(ao paramao, int paramInt)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramao.hashCode());
    arrayOfObject[1] = Integer.valueOf(paramInt);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewStubService", "addCallback, cb.hash = %d, id = %d", arrayOfObject);
    WebViewStubService.f(this.feJ).add(new WebViewStubCallbackWrapper(paramao, paramInt));
  }

  public final void a(String paramString, Bundle paramBundle)
  {
    Bundle localBundle = new Bundle();
    JsapiPermissionWrapper localJsapiPermissionWrapper = new JsapiPermissionWrapper();
    localJsapiPermissionWrapper.i(paramBundle);
    localBundle.putParcelable("proxyui_perm_key", localJsapiPermissionWrapper);
    localBundle.putString("proxyui_username_key", paramString);
    WebViewStubService.a(this.feJ, 4, localBundle);
  }

  public final boolean a(String paramString1, String paramString2, String paramString3, Bundle paramBundle1, Bundle paramBundle2, Bundle paramBundle3)
  {
    boolean bool1 = WebViewStubService.pV(paramString2);
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "handleMsg, function = " + paramString2 + ", doInActivity = " + bool1);
    JsapiPermissionWrapper localJsapiPermissionWrapper = new JsapiPermissionWrapper();
    localJsapiPermissionWrapper.i(paramBundle1);
    Object localObject = null;
    if (paramBundle2 != null)
    {
      Serializable localSerializable = paramBundle2.getSerializable("geta8key_result_scope_list");
      localObject = null;
      if (localSerializable != null)
      {
        ArrayList localArrayList = (ArrayList)localSerializable;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(localArrayList.size());
        com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewStubService", "has scopeList size = %s", arrayOfObject);
        localObject = localArrayList;
      }
    }
    if (bool1)
    {
      WebViewStubService.a(this.feJ, paramString1, paramString2, paramString3, localJsapiPermissionWrapper, paramBundle2, paramBundle3);
      return true;
    }
    com.tencent.mm.ui.tools.jsapi.ao localao = new com.tencent.mm.ui.tools.jsapi.ao();
    localao.type = paramString1;
    localao.function = paramString2;
    localao.hpK = paramString3;
    localao.dOk = com.tencent.mm.ui.tools.jsapi.ao.B(paramBundle3);
    if (WebViewStubService.f(this.feJ).size() > 0);
    for (ao localao1 = ((WebViewStubCallbackWrapper)WebViewStubService.f(this.feJ).get(-1 + WebViewStubService.f(this.feJ).size())).aNT(); ; localao1 = null)
    {
      com.tencent.mm.ui.tools.jsapi.p.aOA().a(this.feJ, localao1);
      boolean bool2 = com.tencent.mm.ui.tools.jsapi.p.aOA().a(localao, localJsapiPermissionWrapper, localObject);
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "handleRet = " + bool2);
      return bool2;
    }
  }

  public final void aF(String paramString1, String paramString2)
  {
    com.tencent.mm.ui.tools.jsapi.p.aOA();
    com.tencent.mm.ui.tools.jsapi.p.aoZ().putString(paramString1, paramString2);
  }

  public final boolean aH(String paramString)
  {
    return h.apk().aH(paramString);
  }

  public final int aJ(int paramInt1, int paramInt2)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getIntConfig, needSetUin = " + bool);
    if (bool)
      return ((Integer)new ah(this, Integer.valueOf(0), paramInt1, paramInt2).b(WebViewStubService.a(this.feJ))).intValue();
    return cj.a((Integer)be.uz().sr().get(paramInt1), paramInt2);
  }

  public final void aK(int paramInt1, int paramInt2)
  {
    WebViewStubService.a(this.feJ).post(new o(this, paramInt1, paramInt2));
  }

  public final void aL(int paramInt1, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("proxyui_expired_errtype", paramInt1);
    localBundle.putInt("proxyui_expired_errcode", paramInt2);
    WebViewStubService.a(this.feJ, 6, localBundle);
  }

  public final void aoY()
  {
    if (h.apk() != null)
      h.apk().detach();
  }

  public final Bundle aoZ()
  {
    com.tencent.mm.ui.tools.jsapi.p.aOA();
    return com.tencent.mm.ui.tools.jsapi.p.aoZ();
  }

  public final void apa()
  {
    com.tencent.mm.ui.tools.jsapi.p.aOA().detach();
  }

  public final String apb()
  {
    return (String)be.uz().sr().get(-1535680990);
  }

  public final String apc()
  {
    SharedPreferences localSharedPreferences = this.feJ.getSharedPreferences(al.azs(), 0);
    return com.tencent.mm.sdk.platformtools.z.a(localSharedPreferences);
  }

  public final void b(int paramInt, Bundle paramBundle)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "edw, invoke, actionCode = " + paramInt);
    WebViewStubService.a(this.feJ).post(new ad(this, paramInt, paramBundle));
  }

  public final void c(int paramInt, List paramList)
  {
    com.tencent.mm.plugin.d.c.m.dZN.b(paramInt, paramList);
  }

  public final boolean c(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 233:
    }
    if (!HB())
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewStubService", "doScene, hasSetUin false");
      return false;
    }
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "doScene, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new q(this, Boolean.valueOf(false), paramBundle).b(WebViewStubService.a(this.feJ))).booleanValue();
    return p(paramBundle);
  }

  public final String cu(String paramString)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getDisplayName, needSetUin = " + bool);
    if (bool)
      return (String)new n(this, "", paramString).b(WebViewStubService.a(this.feJ));
    return be.uz().su().tO(paramString).rq();
  }

  public final boolean cv(String paramString)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "isContact, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new y(this, Boolean.valueOf(false), paramString).b(WebViewStubService.a(this.feJ))).booleanValue();
    return com.tencent.mm.model.w.cv(paramString);
  }

  public final boolean cw(String paramString)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "isBizContact, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new ab(this, Boolean.valueOf(false), paramString).b(WebViewStubService.a(this.feJ))).booleanValue();
    return com.tencent.mm.model.w.cw(paramString);
  }

  public final boolean db(String paramString)
  {
    return com.tencent.mm.model.w.db(paramString);
  }

  public final boolean isBusy()
  {
    boolean bool = com.tencent.mm.ui.tools.jsapi.p.aOA().isBusy();
    if (bool)
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.WebViewStubService", "isBusy, doingFunction = " + com.tencent.mm.ui.tools.jsapi.p.aOA().hpr);
    return bool;
  }

  public final boolean isSDCardAvailable()
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "isSDCardAvailable, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new ag(this, Boolean.valueOf(false)).b(WebViewStubService.a(this.feJ))).booleanValue();
    return be.uz().isSDCardAvailable();
  }

  public final String jR(int paramInt)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getCacheInfo, needSetUin = " + bool);
    if (bool)
      return (String)new w(this, paramInt).b(WebViewStubService.a(this.feJ));
    com.tencent.mm.ag.c localc = com.tencent.mm.ag.a.Dl().et(paramInt);
    if (localc == null)
      return null;
    return localc.field_value;
  }

  public final boolean jS(int paramInt)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "hasCacheInfo, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new x(this, paramInt).b(WebViewStubService.a(this.feJ))).booleanValue();
    return com.tencent.mm.ag.a.Dl().et(paramInt) != null;
  }

  public final void jT(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewStubService", "removeCallback, id = %d", arrayOfObject);
    Iterator localIterator = WebViewStubService.f(this.feJ).iterator();
    while (localIterator.hasNext())
    {
      WebViewStubCallbackWrapper localWebViewStubCallbackWrapper = (WebViewStubCallbackWrapper)localIterator.next();
      if (localWebViewStubCallbackWrapper.id == paramInt)
        WebViewStubService.f(this.feJ).remove(localWebViewStubCallbackWrapper);
    }
  }

  public final a o(Bundle paramBundle)
  {
    aj localaj = new aj((byte)0);
    long l = paramBundle.getLong("msg_id", -9223372036854775808L);
    int i = paramBundle.getInt("sns_local_id", 0);
    int j = paramBundle.getInt("news_svr_id", 0);
    String str = paramBundle.getString("news_svr_tweetid");
    com.tencent.mm.c.a.x localx = new com.tencent.mm.c.a.x();
    boolean bool;
    if (-9223372036854775808L != l)
    {
      localx.bMl.bMp = paramBundle.getInt("message_index", 0);
      bool = com.tencent.mm.pluginsdk.model.b.a(localx, l);
      if (!bool)
        break label295;
      com.tencent.mm.sdk.b.a.ayH().f(localx);
    }
    while (true)
    {
      localaj.feS = bool;
      localaj.ret = localx.bMm.ret;
      localaj.type = localx.bMl.type;
      return localaj;
      if (i != 0)
      {
        gd localgd = new gd();
        localgd.bQz.bQB = i;
        localgd.bQz.bQC = localx;
        localgd.bQz.url = paramBundle.getString("rawUrl");
        com.tencent.mm.sdk.b.a.ayH().f(localgd);
        bool = localgd.bQA.bMh;
        break;
      }
      if (j != 0)
      {
        ew localew = new ew();
        localew.bPF.bNK = 3;
        localew.bPF.bPH = localx;
        localew.bPF.bPI = j;
        localew.bPF.bPJ = str;
        com.tencent.mm.sdk.b.a.ayH().f(localew);
        bool = localew.bPG.bMh;
        break;
      }
      localaj.feR = true;
      return localaj;
      label295: if (localx.bMl.type == 0)
        localx.bMl.type = com.tencent.mm.n.bkK;
    }
  }

  public final String pT(String paramString)
  {
    return com.tencent.mm.plugin.webview.b.e.pT(paramString);
  }

  public final String pW(String paramString)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getHeadImgPath, needSetUin = " + bool);
    if (bool)
      return (String)new af(this, "", paramString).b(WebViewStubService.a(this.feJ));
    return com.tencent.mm.m.c.dW(paramString);
  }

  public final String pX(String paramString)
  {
    if (h.apk() != null)
      return h.apk().h(this.feJ, paramString);
    return null;
  }

  public final void pY(String paramString)
  {
    WebViewStubService.a(this.feJ, 5, null);
  }

  public final void pZ(String paramString)
  {
    com.tencent.mm.ui.tools.jsapi.p.aOA().pZ(paramString);
  }

  public final String q(int paramInt, String paramString)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getStringConfig, needSetUin = " + bool);
    if (bool)
      return (String)new p(this, paramInt, paramString).b(WebViewStubService.a(this.feJ));
    return cj.R((String)be.uz().sr().get(paramInt), paramString);
  }

  public final boolean q(Bundle paramBundle)
  {
    com.tencent.mm.c.a.u localu = new com.tencent.mm.c.a.u();
    localu.bMi.bMk = paramBundle.getLong("fav_local_id", -1L);
    com.tencent.mm.sdk.b.a.ayH().f(localu);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(localu.bMi.bMk);
    arrayOfObject[1] = Boolean.valueOf(localu.bMj.bMh);
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewStubService", "do del fav web url, local id %d, result %B", arrayOfObject);
    return localu.bMj.bMh;
  }

  public final void qa(String paramString)
  {
    com.tencent.mm.pluginsdk.model.app.k localk = l.F(paramString, false);
    if ((localk != null) && (cj.hX(localk.field_openId)))
    {
      com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "initView trigger getappsetting, appId = " + paramString);
      co localco = new co();
      localco.bNS.appId = paramString;
      com.tencent.mm.sdk.b.a.ayH().f(localco);
    }
  }

  public final String qb(String paramString)
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getPackageName, needSetUin = " + bool);
    if (bool)
      return (String)new v(this, paramString).b(WebViewStubService.a(this.feJ));
    com.tencent.mm.pluginsdk.model.app.k localk = l.F(paramString, false);
    if (localk == null)
      return null;
    return localk.field_packageName;
  }

  public final boolean qc(String paramString)
  {
    return com.tencent.mm.ak.a.qc(paramString);
  }

  public final boolean qd()
  {
    return com.tencent.mm.compatible.g.i.qd();
  }

  public final String[] qu()
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getRemoveJsInterfaceList, needSetUin = " + bool);
    if (bool)
      return (String[])new aa(this).b(WebViewStubService.a(this.feJ));
    return com.tencent.mm.e.d.qB().qu();
  }

  public final void r(int paramInt, String paramString)
  {
    com.tencent.mm.ag.c localc = new com.tencent.mm.ag.c();
    localc.field_urlHash = paramInt;
    localc.field_value = paramString;
    WebViewStubService.a(this.feJ).post(new z(this, localc));
  }

  public final boolean tK()
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "hasBindQQ, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new u(this, Boolean.valueOf(false)).b(WebViewStubService.a(this.feJ))).booleanValue();
    return com.tencent.mm.model.v.tK();
  }

  public final List xT()
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "getMyAcceptLinkList, needSetUin = " + bool);
    if (bool)
      return (List)new s(this).b(WebViewStubService.a(this.feJ));
    return com.tencent.mm.p.p.xT();
  }

  public final boolean xU()
  {
    boolean bool = be.uC();
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewStubService", "hasAcceptLinkList, needSetUin = " + bool);
    if (bool)
      return ((Boolean)new r(this, Boolean.valueOf(false)).b(WebViewStubService.a(this.feJ))).booleanValue();
    return com.tencent.mm.p.p.xU();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.m
 * JD-Core Version:    0.6.2
 */