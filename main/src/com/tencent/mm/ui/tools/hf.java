package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;

final class hf
  implements DownloadListener
{
  hf(WebViewUI paramWebViewUI)
  {
  }

  public final void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    aa.d("MicroMsg.WebViewUI", "edw onDownloadStart, url = " + paramString1 + ", mimetype = " + paramString4 + ", userAgent = " + paramString2);
    if ((WebViewUI.a(this.hnv) == null) || (WebViewUI.a(this.hnv).aNQ() == null))
    {
      aa.e("MicroMsg.WebViewUI", "onDownloadStart fail, wvPerm is null");
      return;
    }
    if ((!WebViewUI.a(this.hnv).aNQ().awh()) && (!WebViewUI.h(this.hnv)))
    {
      aa.e("MicroMsg.WebViewUI", "onDownloadStart permission fail");
      return;
    }
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString1));
    localIntent.addFlags(268435456);
    try
    {
      this.hnv.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.WebViewUI", "startActivity fail, e = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.hf
 * JD-Core Version:    0.6.2
 */