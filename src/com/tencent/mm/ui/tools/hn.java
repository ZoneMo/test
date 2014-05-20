package com.tencent.mm.ui.tools;

import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;

final class hn
  implements ib
{
  private hn(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://webview/close/";
  }

  public final boolean xL(String paramString)
  {
    if (!WebViewUI.a(this.hnv).aNQ().awa())
    {
      aa.e("MicroMsg.WebViewUI", "close window permission fail");
      return true;
    }
    this.hnv.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hn
 * JD-Core Version:    0.6.2
 */