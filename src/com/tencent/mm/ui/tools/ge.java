package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebView;
import com.tencent.mm.plugin.webview.stub.ap;
import com.tencent.mm.plugin.webview.stub.d;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.jsapi.ao;
import com.tencent.mm.ui.tools.jsapi.j;

final class ge extends ap
{
  ge(WebViewUI paramWebViewUI)
  {
  }

  public final boolean a(int paramInt, Bundle paramBundle)
  {
    aa.d("MicroMsg.WebViewUI", "callback, actionCode = " + paramInt);
    switch (paramInt)
    {
    default:
    case 1001:
    case 1002:
    case 1003:
    }
    while (true)
    {
      return true;
      if (!this.hnv.isFinishing())
      {
        this.hnv.finish();
        continue;
        long l2 = paramBundle.getLong("download_manager_downloadid");
        if ((this.hnv.hnc != null) && (WebViewUI.a(this.hnv).aNQ().awu()))
        {
          this.hnv.hnc.f(l2, "download_succ");
          continue;
          long l1 = paramBundle.getLong("download_manager_downloadid");
          if ((this.hnv.hnc != null) && (WebViewUI.a(this.hnv).aNQ().awu()))
            this.hnv.hnc.f(l1, "download_fail");
        }
      }
    }
  }

  public final String aoR()
  {
    if (this.hnv.cOj == null)
      return "";
    return this.hnv.cOj.getUrl();
  }

  public final String aoV()
  {
    return this.hnv.bQI;
  }

  public final String aoW()
  {
    return this.hnv.getIntent().getStringExtra("srcUsername");
  }

  public final void aoX()
  {
    if (this.hnv.hnc != null)
      this.hnv.hnc.aoX();
  }

  public final boolean b(d paramd)
  {
    if (this.hnv.hnl.aOh())
      WebViewUI.b(this.hnv).post(new gf(this, paramd));
    return true;
  }

  public final boolean b(String paramString1, String paramString2, Bundle paramBundle)
  {
    if (this.hnv.hnc != null)
      this.hnv.hnc.b(paramString1, paramString2, ao.B(paramBundle));
    return false;
  }

  public final void cb(boolean paramBoolean)
  {
    WebViewUI.b(this.hnv).post(new gh(this, paramBoolean));
  }

  public final void cc(boolean paramBoolean)
  {
    WebViewUI.b(this.hnv).post(new gi(this, paramBoolean));
  }

  public final boolean jQ(int paramInt)
  {
    WebViewUI.b(this.hnv).post(new gg(this, paramInt));
    return true;
  }

  public final void n(Bundle paramBundle)
  {
    aa.i("MicroMsg.WebViewUI", "IUIController, closeWindow");
    if (paramBundle != null)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("result_data", paramBundle);
      this.hnv.setResult(-1, localIntent);
    }
    this.hnv.finish();
  }

  public final void pU(String paramString)
  {
    try
    {
      int j = Integer.parseInt(paramString);
      i = j;
      if (this.hnv.cOj == null)
      {
        aa.e("MicroMsg.WebViewUI", "setFontSizeCb fail, viewWV is null");
        return;
      }
    }
    catch (Exception localException)
    {
      int i;
      while (true)
      {
        aa.e("MicroMsg.WebViewUI", "setFontSizeCb, ex = " + localException.getMessage());
        i = 0;
      }
      WebViewUI.a(this.hnv, i);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ge
 * JD-Core Version:    0.6.2
 */