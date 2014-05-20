package com.tencent.mm.ui.bindgooglecontact;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class g extends WebViewClient
{
  g(BindGoogleContactUI paramBindGoogleContactUI)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.d("MicroMsg.GoogleContact.BindGoogleContactUI", "onPageFinished URL:" + paramString);
    BindGoogleContactUI.a(this.gHC);
    String str;
    if (paramWebView != null)
    {
      str = paramWebView.getTitle();
      com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "title:%s", new Object[] { str });
      if (!TextUtils.isEmpty(str))
      {
        if (!str.toLowerCase().contains("success"))
          break label107;
        if (BindGoogleContactUI.b(this.gHC) != null)
          BindGoogleContactUI.b(this.gHC).setVisibility(4);
        com.tencent.mm.pluginsdk.ui.tools.aa.a(BindGoogleContactUI.b(this.gHC), "weixin://private/googlegetcode", "document.getElementById('code').value");
      }
    }
    label107: 
    while (!str.toLowerCase().contains("error"))
      return;
    com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.GoogleContact.BindGoogleContactUI", "failed." + str.substring(str.indexOf("=")));
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.GoogleContact.BindGoogleContactUI", "shouldOverrideUrlLoading, url = %s", new Object[] { paramString });
    if (paramString.toLowerCase().startsWith("weixin://private/googlegetcode"))
    {
      BindGoogleContactUI.a(this.gHC, paramString);
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.g
 * JD-Core Version:    0.6.2
 */