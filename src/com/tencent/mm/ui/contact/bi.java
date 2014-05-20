package com.tencent.mm.ui.contact;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.mm.platformtools.au;

final class bi extends WebViewClient
{
  bi(ContactQZoneWebView paramContactQZoneWebView)
  {
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if (paramString.startsWith("weixin://viewimage/"))
    {
      this.gTr.wK(paramString);
      paramWebView.stopLoading();
      return;
    }
    if (paramString.equals(ContactQZoneWebView.a(this.gTr)))
    {
      au.w(this.gTr, paramString);
      paramWebView.stopLoading();
      return;
    }
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("weixin://viewimage/"))
    {
      this.gTr.wK(paramString);
      paramWebView.stopLoading();
    }
    while (true)
    {
      return true;
      paramWebView.loadUrl(paramString);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bi
 * JD-Core Version:    0.6.2
 */