package com.tencent.mm.plugin.webview.stub;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.plugin.webview.a.a;
import com.tencent.mm.pluginsdk.e;

final class h
  implements DialogInterface.OnClickListener
{
  h(WebViewStubProxyUI paramWebViewStubProxyUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.cHS.f(new Intent(), this.fey);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.h
 * JD-Core Version:    0.6.2
 */