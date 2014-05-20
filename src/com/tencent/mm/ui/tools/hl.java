package com.tencent.mm.ui.tools;

import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;

final class hl
  implements ib
{
  private hl(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://jump/";
  }

  public final boolean xL(String paramString)
  {
    try
    {
      this.hnv.cOg.D(paramString, WebViewUI.a(this.hnv).aNQ().avR());
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        aa.w("MicroMsg.WebViewUI", "ActivityJumpHandler, ex = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hl
 * JD-Core Version:    0.6.2
 */