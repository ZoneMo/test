package com.tencent.mm.ui.c;

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
import com.tencent.mm.ui.a.a.d;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;

final class k extends WebViewClient
{
  private boolean haG = true;

  private k(h paramh)
  {
  }

  private static Bundle xj(String paramString)
  {
    Bundle localBundle = new Bundle();
    if (paramString != null)
    {
      String[] arrayOfString1 = paramString.split("&");
      int i = arrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = arrayOfString1[j].split("=");
        localBundle.putString(URLDecoder.decode(arrayOfString2[0]), URLDecoder.decode(arrayOfString2[1]));
      }
    }
    return localBundle;
  }

  private static Bundle xk(String paramString)
  {
    String str = paramString.replace("wechatapp", "http");
    try
    {
      URL localURL = new URL(str);
      Bundle localBundle = xj(localURL.getQuery());
      localBundle.putAll(xj(localURL.getRef()));
      return localBundle;
    }
    catch (MalformedURLException localMalformedURLException)
    {
    }
    return new Bundle();
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    this.haG = false;
    try
    {
      h.b(this.hsm).dismiss();
      label21: h.c(this.hsm).setBackgroundColor(0);
      h.d(this.hsm).setVisibility(0);
      h.e(this.hsm).setVisibility(0);
      return;
    }
    catch (Exception localException)
    {
      break label21;
    }
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    aa.d("Twitter-WebView", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    try
    {
      h.b(this.hsm).show();
      h.b(this.hsm).setOnDismissListener(new l(this));
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
    j localj = h.a(this.hsm);
    new d(paramString1, paramInt, paramString2);
    localj.aPd();
    try
    {
      this.hsm.dismiss();
      h.b(this.hsm).dismiss();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    aa.d("Twitter-WebView", "Redirect URL: " + paramString);
    if (paramString.startsWith("wechatapp://sign-in-twitter.wechatapp.com/"))
    {
      Bundle localBundle = xk(paramString);
      if (localBundle.getString("denied") == null)
        h.a(this.hsm).e(localBundle);
      while (true)
      {
        this.hsm.dismiss();
        return true;
        h.a(this.hsm).onCancel();
      }
    }
    this.hsm.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.k
 * JD-Core Version:    0.6.2
 */