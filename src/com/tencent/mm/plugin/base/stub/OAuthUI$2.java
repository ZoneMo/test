package com.tencent.mm.plugin.base.stub;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.ProgressBar;

class OAuthUI$2 extends WebChromeClient
{
  OAuthUI$2(OAuthUI paramOAuthUI)
  {
  }

  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt <= 0)
      OAuthUI.a(this.cOo).setVisibility(0);
    while (paramInt < 100)
      return;
    OAuthUI.a(this.cOo).setVisibility(4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.OAuthUI.2
 * JD-Core Version:    0.6.2
 */