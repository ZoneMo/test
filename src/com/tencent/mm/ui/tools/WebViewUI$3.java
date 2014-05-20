package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Build.VERSION;
import android.view.View;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.tencent.mm.i;
import com.tencent.mm.n;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;

class WebViewUI$3 extends WebChromeClient
{
  WebViewUI$3(WebViewUI paramWebViewUI)
  {
  }

  private void a(ValueCallback paramValueCallback)
  {
    if ((WebViewUI.a(this.hnv) == null) || (WebViewUI.a(this.hnv).aNQ() == null))
    {
      aa.e("MicroMsg.WebViewUI", "openFileChooser fail, wvPerm is null");
      paramValueCallback.onReceiveValue(null);
      return;
    }
    if (!WebViewUI.a(this.hnv).aNQ().awE())
    {
      aa.e("MicroMsg.WebViewUI", "openfi file chooser failed, permission fail");
      paramValueCallback.onReceiveValue(null);
      return;
    }
    WebViewUI.a(this.hnv, paramValueCallback);
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.addCategory("android.intent.category.OPENABLE");
    localIntent.setType("*/*");
    this.hnv.startActivityForResult(Intent.createChooser(localIntent, this.hnv.getString(n.bIs)), 1);
  }

  public View getVideoLoadingProgressView()
  {
    if (WebViewUI.g(this.hnv) == null)
    {
      WebViewUI.a(this.hnv, new ProgressBar(this.hnv));
      WebViewUI.g(this.hnv).setIndeterminate(true);
    }
    return WebViewUI.g(this.hnv);
  }

  public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    aa.e("MicroMsg.WebViewUI", "onGeolocationPermissionsShowPrompt, origin = %s", new Object[] { paramString });
    paramCallback.invoke(paramString, true, false);
  }

  public void onHideCustomView()
  {
    aa.i("MicroMsg.WebViewUI", "onHideCustomView, sdk int = " + Build.VERSION.SDK_INT);
    if (WebViewUI.e(this.hnv) == null);
    do
    {
      return;
      this.hnv.mB(0);
      WebViewUI.b(this.hnv, true);
      this.hnv.cOj.setVisibility(0);
      FrameLayout localFrameLayout = (FrameLayout)this.hnv.findViewById(i.aqA);
      if (localFrameLayout != null)
        localFrameLayout.removeView(WebViewUI.e(this.hnv));
      WebViewUI.a(this.hnv, null);
    }
    while (WebViewUI.f(this.hnv) == null);
    WebViewUI.f(this.hnv).onCustomViewHidden();
  }

  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt < 100)
      WebViewUI.c(this.hnv, false);
    while (paramInt < 100)
      return;
    WebViewUI.c(this.hnv, true);
  }

  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    super.onReceivedTitle(paramWebView, paramString);
    if (this.hnv.hmQ)
      aa.i("MicroMsg.WebViewUI", "fixed title, ignore received title: " + paramString);
    while (!WebViewUI.d(this.hnv))
      return;
    this.hnv.vT(paramString);
  }

  public void onSelectionStart(WebView paramWebView)
  {
  }

  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    aa.i("MicroMsg.WebViewUI", "onShowCustomView, sdk int = " + Build.VERSION.SDK_INT);
    if (WebViewUI.e(this.hnv) != null)
    {
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    this.hnv.mB(4);
    WebViewUI.b(this.hnv, false);
    WebViewUI.a(this.hnv, paramView);
    WebViewUI.a(this.hnv, paramCustomViewCallback);
    this.hnv.cOj.setVisibility(8);
    ((FrameLayout)this.hnv.findViewById(i.aqA)).addView(paramView);
  }

  public void openFileChooser(ValueCallback paramValueCallback)
  {
    a(paramValueCallback);
  }

  public void openFileChooser(ValueCallback paramValueCallback, String paramString)
  {
    a(paramValueCallback);
  }

  public void openFileChooser(ValueCallback paramValueCallback, String paramString1, String paramString2)
  {
    a(paramValueCallback);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.WebViewUI.3
 * JD-Core Version:    0.6.2
 */