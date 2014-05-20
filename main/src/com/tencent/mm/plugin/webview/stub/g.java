package com.tencent.mm.plugin.webview.stub;

import android.os.RemoteException;
import com.tencent.mm.c.a.ht;
import com.tencent.mm.c.a.hv;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.p;
import com.tencent.mm.sdk.platformtools.aa;

final class g
  implements Runnable
{
  g(WebViewStubProxyUI paramWebViewStubProxyUI, ht paramht)
  {
  }

  public final void run()
  {
    if (!this.fex.bRp.bRq)
      this.fey.finish();
    while (true)
    {
      return;
      if (WebViewStubProxyUI.a(this.fey) != null);
      try
      {
        WebViewStubProxyUI.a(this.fey).a(1001, null);
        this.fey.finish();
        p localp = h.apo();
        if (localp == null)
          continue;
        localp.a(this.fey, this.fex.bRp.bRr);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          aa.w("MicroMsg.WebViewStubProxyUI", "dealUpdate fail, ex = " + localRemoteException.getMessage());
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.g
 * JD-Core Version:    0.6.2
 */