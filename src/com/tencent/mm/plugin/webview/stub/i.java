package com.tencent.mm.plugin.webview.stub;

import android.os.Bundle;
import android.os.IBinder;
import com.tencent.mm.sdk.platformtools.aa;

final class i
  implements ao
{
  i(WebViewStubProxyUI paramWebViewStubProxyUI)
  {
  }

  public final boolean a(int paramInt, Bundle paramBundle)
  {
    WebViewStubProxyUI.a(this.fey).a(paramInt, paramBundle);
    return false;
  }

  public final String aoR()
  {
    return WebViewStubProxyUI.a(this.fey).aoR();
  }

  public final String aoV()
  {
    return WebViewStubProxyUI.a(this.fey).aoV();
  }

  public final String aoW()
  {
    return WebViewStubProxyUI.a(this.fey).aoW();
  }

  public final void aoX()
  {
    WebViewStubProxyUI.a(this.fey).aoX();
  }

  public final IBinder asBinder()
  {
    return null;
  }

  public final boolean b(d paramd)
  {
    WebViewStubProxyUI.a(this.fey).b(paramd);
    return false;
  }

  public final boolean b(String paramString1, String paramString2, Bundle paramBundle)
  {
    aa.d("MicroMsg.callbackerWrapper", "onHandleEnd in callbackerWrapper");
    this.fey.runOnUiThread(new j(this, paramString1, paramString2, paramBundle));
    return false;
  }

  public final void cb(boolean paramBoolean)
  {
    WebViewStubProxyUI.a(this.fey).cb(paramBoolean);
  }

  public final void cc(boolean paramBoolean)
  {
    WebViewStubProxyUI.a(this.fey).cc(paramBoolean);
  }

  public final boolean jQ(int paramInt)
  {
    WebViewStubProxyUI.a(this.fey).jQ(paramInt);
    return false;
  }

  public final void n(Bundle paramBundle)
  {
    WebViewStubProxyUI.a(this.fey).n(paramBundle);
  }

  public final void pU(String paramString)
  {
    WebViewStubProxyUI.a(this.fey).pU(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.i
 * JD-Core Version:    0.6.2
 */