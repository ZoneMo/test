package com.tencent.mm.ui.tools;

import android.annotation.TargetApi;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class hq extends WebViewClient
{
  private String hnB = null;

  protected hq(WebViewUI paramWebViewUI)
  {
  }

  public boolean iF(String paramString)
  {
    aa.d("MicroMsg.WebViewUI", "edw mmShouldOverride, mode = " + WebViewUI.B(this.hnv));
    this.hnB = paramString;
    if (WebViewUI.e(this.hnv, paramString))
    {
      aa.i("MicroMsg.WebViewUI", "custom scheme url deal success, url = " + paramString);
      return true;
    }
    if (WebViewUI.B(this.hnv) == 1)
    {
      Intent localIntent = new Intent(this.hnv, WebViewUI.class);
      localIntent.putExtras(this.hnv.getIntent());
      localIntent.putExtra("rawUrl", paramString);
      localIntent.putExtra("mode", 0);
      localIntent.removeExtra("title");
      this.hnv.startActivity(localIntent);
      return true;
    }
    if ((paramString != null) && (paramString.contains("#wechat_webview_type")))
    {
      WebViewUI localWebViewUI = this.hnv;
      WebViewUI.b(localWebViewUI, WebViewUI.xK(paramString));
      boolean bool = this.hnv.getIntent().getBooleanExtra("showShare", true);
      WebViewUI.a(this.hnv, bool);
      WebViewUI.b(this.hnv, this.hnv.aNU());
    }
    return false;
  }

  public void onLoadResource(WebView paramWebView, String paramString)
  {
    super.onLoadResource(paramWebView, paramString);
    aa.d("MicroMsg.WebViewUI", "edw onLoadResource, url = " + paramString);
    if (!WebViewUI.xJ(paramString))
    {
      aa.aM("MicroMsg.WebViewUI", "onLoadResource, canLoadUrl fail, url = " + paramString);
      WebViewUI.j(this.hnv);
    }
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    aa.d("MicroMsg.WebViewUI", "edw onPageFinished, url = " + paramString);
    if (this.hnv.cOj == null)
    {
      aa.w("MicroMsg.WebViewUI", "onPageFinished, webview has been destroyed, skip");
      return;
    }
    WebViewUI.I(this.hnv);
    if (!WebViewUI.xJ(paramString))
    {
      aa.aM("MicroMsg.WebViewUI", "onPageFinished, canLoadUrl fail, url = " + paramString);
      WebViewUI.j(this.hnv);
      return;
    }
    this.hnv.setProgressBarIndeterminateVisibility(false);
    WebViewUI.f(this.hnv, "");
    WebViewUI.J(this.hnv);
    if (paramString.equals("file:///android_asset/jsapi/wxjs.js"))
    {
      aa.d("MicroMsg.WebViewUI", "onPageFinished, js is finished loaded");
      return;
    }
    if ((WebViewUI.a(this.hnv) != null) && (WebViewUI.a(this.hnv).xz(paramString) != null))
      WebViewUI.d(this.hnv, WebViewUI.a(this.hnv).xz(paramString).awy());
    WebViewUI.b(this.hnv, this.hnv.aNU());
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    aa.d("MicroMsg.WebViewUI", "edw onPageStarted, url = " + paramString);
    this.hnB = paramString;
    if (!WebViewUI.xJ(paramString))
    {
      aa.aM("MicroMsg.WebViewUI", "onPageStarted, canLoadUrl fail, url = " + paramString);
      WebViewUI.j(this.hnv);
      return;
    }
    Iterator localIterator = WebViewUI.D(this.hnv).iterator();
    while (localIterator.hasNext())
    {
      ib localib = (ib)localIterator.next();
      String str = localib.aOe().toLowerCase();
      if ((paramString != null) && (paramString.toLowerCase().startsWith(str)))
      {
        aa.i("MicroMsg.WebViewUI", "url handled, url = " + paramString);
        if (WebViewUI.C(this.hnv).equals(paramString))
        {
          aa.i("MicroMsg.WebViewUI", "url " + paramString + " has been handle");
          return;
        }
        localib.xL(paramString);
        WebViewUI.f(this.hnv, paramString);
        return;
      }
    }
    this.hnv.setProgressBarIndeterminateVisibility(true);
    WebViewUI.H(this.hnv);
    WebViewUI.a(this.hnv, paramString, false);
    this.hnv.s(true, false);
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    aa.e("MicroMsg.WebViewUI", "edw onReceivedError, failingUrl = " + paramString2);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  @TargetApi(8)
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    String str;
    if (paramWebView.getUrl() == null)
      str = this.hnB;
    while (true)
    {
      if (str != null);
      try
      {
        URL localURL = new URL(str);
        if ((localURL.getHost().endsWith(".qq.com")) || (localURL.getHost().endsWith(".linkedin.com")))
        {
          paramSslErrorHandler.proceed();
          return;
          str = paramWebView.getUrl();
          continue;
        }
        aa.d("MicroMsg.WebViewUI", "host = " + localURL.getHost() + ", but it not end with '.qq.com'");
        super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
        return;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        while (true)
          aa.e("MicroMsg.WebViewUI", "create url fail : " + localMalformedURLException.getLocalizedMessage());
      }
    }
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    aa.d("MicroMsg.WebViewUI", "edw shouldOverride url = " + paramString);
    if (!WebViewUI.xJ(paramString))
    {
      aa.aM("MicroMsg.WebViewUI", "shouldOverrideUrlLoading, canLoadUrl fail, url = " + paramString);
      WebViewUI.j(this.hnv);
      return true;
    }
    if (paramString.equalsIgnoreCase("about:blank"))
    {
      aa.e("MicroMsg.WebViewUI", "shouldOverride, url is about:blank");
      return true;
    }
    try
    {
      if (this.hnv.cOg.C(paramString, WebViewUI.a(this.hnv).aNQ().avR()))
      {
        aa.i("MicroMsg.WebViewUI", "shouldOverride, built in url handled, url = " + paramString);
        return true;
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.WebViewUI", "shouldOverride, jumpToActivity, ex = " + localException.getMessage());
      if (WebViewUI.a(this.hnv) == null)
      {
        aa.e("MicroMsg.WebViewUI", "wvPerm is null, maybe has detach");
        return true;
      }
      if (paramString.equals(WebViewUI.C(this.hnv)))
      {
        WebViewUI.f(this.hnv, "");
        return true;
      }
      Iterator localIterator = WebViewUI.D(this.hnv).iterator();
      while (localIterator.hasNext())
      {
        ib localib = (ib)localIterator.next();
        String str = localib.aOe().toLowerCase();
        if ((paramString != null) && (paramString.toLowerCase().startsWith(str)))
        {
          boolean bool = localib.xL(paramString);
          aa.i("MicroMsg.WebViewUI", "url handled, ret = " + bool + ", url = " + paramString);
          return true;
        }
      }
      int i = WebViewUI.E(this.hnv).xM(paramString);
      if (((i == 0) || (i == 2)) && (!WebViewUI.F(this.hnv)))
      {
        aa.d("MicroMsg.WebViewUI", "edw shouldOverride, should not continue, reason = " + i);
        if (paramString.equals(WebViewUI.G(this.hnv)))
        {
          aa.w("MicroMsg.WebViewUI", "shouldOverride, url equals lastGetA8KeyUrl, not trigger geta8key");
          return iF(paramString);
        }
        this.hnv.cOj.stopLoading();
        WebViewUI.a(this.hnv, paramString, true);
        return true;
      }
    }
    return iF(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hq
 * JD-Core Version:    0.6.2
 */