package com.tencent.mm.ui.tools;

import com.tencent.mm.plugin.webview.stub.al;

final class id
  implements ib
{
  private id(WebViewUI paramWebViewUI)
  {
  }

  public final String aOe()
  {
    return "weixin://viewimage/";
  }

  public final boolean xL(String paramString)
  {
    try
    {
      if (!this.hnv.cOg.isSDCardAvailable())
      {
        this.hnv.cOg.b(2, null);
        return true;
      }
    }
    catch (Exception localException)
    {
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.WebViewUI", "edw handleUrl, ex = " + localException.getMessage());
      return false;
    }
    WebViewUI.g(this.hnv, paramString.substring(19));
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.WebViewUI", "viewimage currentUrl :" + WebViewUI.K(this.hnv));
    com.tencent.mm.pluginsdk.ui.tools.aa.a(this.hnv.cOj, "weixin://private/gethtml/", "'<head>' + document.getElementsByTagName('head')[0].innerHTML + '</head><body>' + document.getElementsByTagName('body')[0].innerHTML + '</body>'");
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.id
 * JD-Core Version:    0.6.2
 */