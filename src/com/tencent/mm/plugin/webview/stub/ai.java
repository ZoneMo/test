package com.tencent.mm.plugin.webview.stub;

import android.os.Bundle;
import com.tencent.mm.pluginsdk.model.downloader.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.WebViewStubCallbackWrapper;
import java.util.Iterator;
import java.util.List;

final class ai
  implements n
{
  ai(WebViewStubService paramWebViewStubService)
  {
  }

  public final void bn(long paramLong)
  {
    aa.d("MicroMsg.WebViewUI.IFileDownloadCallback", "onDownloadFinished, downloadId = " + paramLong);
    try
    {
      Iterator localIterator = WebViewStubService.f(this.feJ).iterator();
      while (localIterator.hasNext())
      {
        WebViewStubCallbackWrapper localWebViewStubCallbackWrapper = (WebViewStubCallbackWrapper)localIterator.next();
        Bundle localBundle = new Bundle();
        localBundle.putLong("download_manager_downloadid", paramLong);
        localWebViewStubCallbackWrapper.aNT().a(1002, localBundle);
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.WebViewUI.IFileDownloadCallback", "onDownloadFinished, ex = " + localException.getMessage());
    }
  }

  public final void bo(long paramLong)
  {
    aa.d("MicroMsg.WebViewUI.IFileDownloadCallback", "onDownloadError, downloadId = " + paramLong);
    try
    {
      Iterator localIterator = WebViewStubService.f(this.feJ).iterator();
      while (localIterator.hasNext())
      {
        WebViewStubCallbackWrapper localWebViewStubCallbackWrapper = (WebViewStubCallbackWrapper)localIterator.next();
        Bundle localBundle = new Bundle();
        localBundle.putLong("download_manager_downloadid", paramLong);
        localWebViewStubCallbackWrapper.aNT().a(1003, localBundle);
      }
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.WebViewUI.IFileDownloadCallback", "onDownloadError, ex = " + localException.getMessage());
    }
  }

  public final void bp(long paramLong)
  {
  }

  public final void bq(long paramLong)
  {
  }

  public final void d(long paramLong, String paramString)
  {
  }

  public final void qd(String paramString)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.ai
 * JD-Core Version:    0.6.2
 */