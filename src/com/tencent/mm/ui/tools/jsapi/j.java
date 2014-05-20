package com.tencent.mm.ui.tools.jsapi;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.webkit.WebView;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.tools.ib;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;

public final class j
  implements ib
{
  private al cOg;
  private Handler handler = null;
  private List hjt = null;
  private WebView hmG;
  private Vector hpd = null;
  private Map hpe;
  private Map hpf;
  private boolean hpg = false;
  private d hph;

  public j(WebView paramWebView, Map paramMap, d paramd, al paramal)
  {
    this.hmG = paramWebView;
    this.handler = new k(this);
    this.hph = paramd;
    this.cOg = paramal;
    this.hpe = paramMap;
    this.hpd = new Vector();
  }

  private void aOv()
  {
    while (true)
    {
      if ((this.hjt == null) || (this.hjt.size() == 0))
      {
        aa.i("MicroMsg.JsApiHandler", "dealNextMsg stop, msgList is empty");
        return;
      }
      ao localao;
      try
      {
        boolean bool4 = this.cOg.isBusy();
        bool1 = bool4;
        if (bool1)
        {
          aa.w("MicroMsg.JsApiHandler", "dealNextMsg fail, msgHandler is busy now");
          return;
        }
      }
      catch (Exception localException1)
      {
        while (true)
        {
          aa.w("MicroMsg.JsApiHandler", "isBusy, ex = " + localException1.getMessage());
          boolean bool1 = false;
        }
        localao = (ao)this.hjt.remove(0);
        if (localao == null)
        {
          aa.e("MicroMsg.JsApiHandler", "dealNextMsg fail, msg is null");
          continue;
        }
        if ((localao.function == null) || (localao.dOk == null) || (localao.type == null) || (this.hmG == null))
        {
          aa.e("MicroMsg.JsApiHandler", "dealNextMsg fail, can cause nullpointer, function = " + localao.function + ", params = " + localao.dOk + ", type = " + localao.type + ", wv = " + this.hmG);
          continue;
        }
        if ((this.hpf != null) && (this.hpf.get("srcUsername") != null) && (!cj.hX(this.hpf.get("srcUsername").toString())))
          localao.dOk.put("src_username", this.hpf.get("srcUsername").toString());
        if ((this.hpf != null) && (this.hpf.get("srcDisplayname") != null) && (!cj.hX(this.hpf.get("srcDisplayname").toString())))
          localao.dOk.put("src_displayname", this.hpf.get("srcDisplayname").toString());
        if (this.hpf != null)
        {
          localao.dOk.put("message_id", this.hpf.get("message_id"));
          localao.dOk.put("message_index", this.hpf.get("message_index"));
          localao.dOk.put("scene", this.hpf.get("scene"));
          localao.dOk.put("pay_channel", this.hpf.get("pay_channel"));
        }
        if ((!localao.function.equals("addEmoticon")) && (!localao.function.equals("hasEmoticon")) && (!localao.function.equals("cancelAddEmoticon")) && (!localao.function.equals("shareWeibo")) && (!localao.function.equals("openUrlByExtBrowser")))
          localao.dOk.put("url", this.hmG.getUrl());
      }
      try
      {
        JsapiPermissionWrapper localJsapiPermissionWrapper = this.hph.aOb();
        Bundle localBundle1 = new Bundle();
        if (localJsapiPermissionWrapper != null)
          localJsapiPermissionWrapper.h(localBundle1);
        Bundle localBundle2 = new Bundle();
        try
        {
          if (this.hph.aNS() != null)
            localBundle2.putSerializable("geta8key_result_scope_list", this.hph.aNS());
          Bundle localBundle3 = ao.r(localao.dOk);
          boolean bool3 = this.cOg.a(localao.type, localao.function, localao.hpK, localBundle1, localBundle2, localBundle3);
          bool2 = bool3;
          aa.d("MicroMsg.JsApiHandler", "dealNextMsg, handleRet = " + bool2);
          if (!bool2)
            continue;
          return;
        }
        catch (Exception localException3)
        {
          while (true)
          {
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = localException3.getMessage();
            aa.c("MicroMsg.JsApiHandler", "handleMsg, exception in getScopeList %s", arrayOfObject);
          }
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          aa.w("MicroMsg.JsApiHandler", "handleMsg, ex = " + localException2.getMessage());
          boolean bool2 = false;
        }
      }
    }
  }

  public final String aOe()
  {
    return "weixin://dispatch_message/";
  }

  public final void aOw()
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onShareTimeline fail, not ready");
      return;
    }
    String str = ap.i("menu:share:timeline", new HashMap());
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + str + ")");
  }

  public final void aOx()
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onSendToFriend fail, not ready");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("scene", "friend");
    String str = ap.i("menu:share:appmessage", localHashMap);
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + str + ")");
    try
    {
      this.cOg.aF("scene", "friend");
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.JsApiHandler", "jsapiBundlePutString, ex = " + localException.getMessage());
    }
  }

  public final void aOy()
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onFavorite fail, not ready");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("scene", "favorite");
    String str = ap.i("menu:share:appmessage", localHashMap);
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + str + ")");
    try
    {
      this.cOg.aF("scene", "favorite");
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.JsApiHandler", "jsapiBundlePutString, ex = " + localException.getMessage());
    }
  }

  public final void aOz()
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onSendMail fail, not ready");
      return;
    }
    String str = ap.i("menu:share:email", new HashMap());
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + str + ")");
  }

  public final void aoX()
  {
    if (this.hjt != null)
      this.hjt.clear();
  }

  public final Bundle aoZ()
  {
    try
    {
      Bundle localBundle = this.cOg.aoZ();
      return localBundle;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.JsApiHandler", "getJsapiArgsBundle, ex = " + localException.getMessage());
    }
    return null;
  }

  public final void b(String paramString1, String paramString2, Map paramMap)
  {
    if (!cj.hX(paramString1))
    {
      if ((paramString2 != null) && (paramString2.length() != 0) && (paramString1 != null))
        break label49;
      aa.e("MicroMsg.JsApiHandler", "doCallback, invalid args, ret = " + paramString2);
    }
    while (true)
    {
      aOv();
      return;
      label49: HashMap localHashMap = new HashMap();
      localHashMap.put("err_msg", paramString2);
      if ((paramMap != null) && (paramMap.size() > 0))
      {
        aa.d("MicroMsg.JsApiHandler", "doCallback, retValue size = " + paramMap.size());
        localHashMap.putAll(paramMap);
      }
      String str = ap.h(paramString1, localHashMap);
      aa.d("MicroMsg.JsApiHandler", "doCallback, ret = " + paramString2 + ", cb = " + str);
      if ((str != null) && (this.hmG != null))
        an.i(new o(this, str));
      if ((paramString2.equals("add_emoticon:ok")) && (this.hph != null))
        this.hph.aOc();
    }
  }

  public final void e(int paramInt, String paramString1, String paramString2)
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onShareWeibo fail, not ready");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", String.valueOf(paramInt));
    localHashMap.put("url", paramString1);
    localHashMap.put("content", paramString2);
    String str = ap.i("menu:share:weibo", localHashMap);
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + str + ")");
  }

  public final void f(long paramLong, String paramString)
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onDownloadStateChange fail, not ready");
      return;
    }
    aa.d("MicroMsg.JsApiHandler", "onDownloadStateChange, downloadId = " + paramLong + ", state = " + paramString);
    HashMap localHashMap = new HashMap();
    localHashMap.put("download_id", Long.valueOf(paramLong));
    localHashMap.put("state", paramString);
    an.i(new m(this, ap.i("wxdownload:state_change", localHashMap)));
  }

  public final void init()
  {
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + ap.i("sys:init", this.hpe) + ")");
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + ap.i("sys:bridged", null) + ")");
    this.hpg = true;
  }

  public final void keep_setReturnValue(String paramString1, String paramString2)
  {
    aa.d("MicroMsg.JsApiHandler", "setResultValue, scene = " + paramString1 + ", resultValue = " + paramString2);
    aa.d("MicroMsg.JsApiHandler", "edw setResultValue = threadId = " + Thread.currentThread().getId() + ", threadName = " + Thread.currentThread().getName());
    Message localMessage;
    if (this.handler != null)
    {
      localMessage = Message.obtain();
      localMessage.obj = paramString2;
      if (!paramString1.equals("SCENE_FETCHQUEUE"))
        break label115;
      localMessage.what = 1;
    }
    while (true)
    {
      this.handler.sendMessage(localMessage);
      return;
      label115: if (paramString1.equals("SCENE_HANDLEMSGFROMWX"))
        localMessage.what = 2;
    }
  }

  public final void oA(int paramInt)
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onFontSizeChanged fail, not ready");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("fontSize", String.valueOf(paramInt));
    String str = ap.i("menu:setfont", localHashMap);
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + str + ")");
  }

  public final void pZ(String paramString)
  {
    try
    {
      this.cOg.pZ(paramString);
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.JsApiHandler", "setFromMenu, ex = " + localException.getMessage());
    }
  }

  public final void q(Map paramMap)
  {
    this.hpf = paramMap;
  }

  public final boolean xL(String paramString)
  {
    this.hmG.loadUrl("javascript:WeixinJSBridge._fetchQueue()");
    return true;
  }

  public final void xO(String paramString)
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onSendToConnector fail, not ready");
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("scene", "connector");
    String str = ap.i("menu:share:appmessage", localHashMap);
    this.hmG.loadUrl("javascript:WeixinJSBridge._handleMessageFromWeixin(" + str + ")");
    try
    {
      this.cOg.aF("connector_local_send", paramString);
      this.cOg.aF("scene", "connector");
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.JsApiHandler", "jsapiBundlePutString, ex = " + localException.getMessage());
    }
  }

  public final void xP(String paramString)
  {
    if (!this.hpg)
    {
      aa.e("MicroMsg.JsApiHandler", "onActivityStateChanged fail, not ready");
      return;
    }
    aa.i("MicroMsg.JsApiHandler", "onActivityStateChanged, state = " + paramString);
    HashMap localHashMap = new HashMap();
    localHashMap.put("state", paramString);
    an.i(new n(this, ap.i("activity:state_change", localHashMap)));
  }

  public final void xQ(String paramString)
  {
    try
    {
      Bundle localBundle = new Bundle();
      JsapiPermissionWrapper localJsapiPermissionWrapper = this.hph.aOb();
      if (localJsapiPermissionWrapper != null)
        localJsapiPermissionWrapper.h(localBundle);
      this.cOg.a(paramString, localBundle);
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.JsApiHandler", "doProfile, ex = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.jsapi.j
 * JD-Core Version:    0.6.2
 */