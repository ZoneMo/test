package com.tencent.mm.ui.a.a;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.tencent.mm.sdk.platformtools.aa;

final class k extends WebViewClient
{
  private boolean haG = true;

  private k(i parami)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    this.haG = false;
    try
    {
      i.b(this.haF).dismiss();
      label21: i.c(this.haF).setBackgroundColor(0);
      i.d(this.haF).setVisibility(0);
      i.e(this.haF).setVisibility(0);
      return;
    }
    catch (Exception localException)
    {
      break label21;
    }
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    aa.d("Facebook-WebView", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    try
    {
      i.b(this.haF).show();
      i.b(this.haF).setOnDismissListener(new l(this));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    this.haG = false;
    i.a(this.haF).a(new d(paramString1, paramInt, paramString2));
    try
    {
      this.haF.dismiss();
      i.b(this.haF).dismiss();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    aa.d("Facebook-WebView", "Redirect URL: " + paramString);
    if (paramString.startsWith("fbconnect://success"))
    {
      Bundle localBundle = m.xk(paramString);
      String str = localBundle.getString("error");
      if (str == null)
        str = localBundle.getString("error_type");
      if (str == null)
        i.a(this.haF).e(localBundle);
      while (true)
      {
        this.haF.dismiss();
        return true;
        if ((str.equals("access_denied")) || (str.equals("OAuthAccessDeniedException")))
          i.a(this.haF).onCancel();
        else
          i.a(this.haF).a(new h(str));
      }
    }
    if (paramString.startsWith("fbconnect://cancel"))
    {
      i.a(this.haF).onCancel();
      try
      {
        this.haF.dismiss();
        return true;
      }
      catch (Exception localException)
      {
        return true;
      }
    }
    if (paramString.contains("touch"))
      return false;
    this.haF.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.a.a.k
 * JD-Core Version:    0.6.2
 */