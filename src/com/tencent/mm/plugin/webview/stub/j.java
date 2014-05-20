package com.tencent.mm.plugin.webview.stub;

import android.os.Bundle;
import com.tencent.mm.sdk.platformtools.aa;

final class j
  implements Runnable
{
  j(i parami, String paramString1, String paramString2, Bundle paramBundle)
  {
  }

  public final void run()
  {
    this.feC.fey.finish();
    try
    {
      WebViewStubProxyUI.a(this.feC.fey).b(this.fez, this.feA, this.feB);
      return;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.callbackerWrapper", "wrapper onHandleEnd, ex = " + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.j
 * JD-Core Version:    0.6.2
 */