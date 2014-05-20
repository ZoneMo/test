package com.tencent.mm.plugin.webview.stub;

import android.view.View;
import android.view.Window;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class l
  implements az
{
  l(WebViewStubProxyUI paramWebViewStubProxyUI)
  {
  }

  public final boolean ok()
  {
    if ((this.fey.getWindow() == null) || (this.fey.getWindow().getDecorView() == null) || (this.fey.getWindow().getDecorView().getWindowToken() == null))
    {
      if (WebViewStubProxyUI.b(this.fey) < 10)
      {
        WebViewStubProxyUI.c(this.fey);
        return true;
      }
      aa.e("MicroMsg.WebViewStubProxyUI", "timer reach max retry time, finish ProxyUI");
      this.fey.finish();
      return false;
    }
    WebViewStubProxyUI.d(this.fey);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.l
 * JD-Core Version:    0.6.2
 */