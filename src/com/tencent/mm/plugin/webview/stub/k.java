package com.tencent.mm.plugin.webview.stub;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class k
  implements DialogInterface.OnDismissListener
{
  k(WebViewStubProxyUI paramWebViewStubProxyUI)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if (!this.fey.isFinishing())
      this.fey.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.k
 * JD-Core Version:    0.6.2
 */