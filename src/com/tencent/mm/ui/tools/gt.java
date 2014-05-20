package com.tencent.mm.ui.tools;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.plugin.webview.stub.am;
import com.tencent.mm.sdk.platformtools.aa;

final class gt
  implements ServiceConnection
{
  gt(WebViewUI paramWebViewUI)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aa.d("MicroMsg.WebViewUI", "edw onServiceConnected");
    if (this.hnv.cOj == null)
    {
      aa.e("MicroMsg.WebViewUI", "onServiceConnected, activity destroyed");
      return;
    }
    this.hnv.cOg = am.q(paramIBinder);
    try
    {
      this.hnv.cOg.a(WebViewUI.c(this.hnv), this.hnv.hashCode());
      this.hnv.Ix();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = localException.getMessage();
        aa.b("MicroMsg.WebViewUI", "addCallback fail, ex = %s", arrayOfObject);
      }
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    aa.d("MicroMsg.WebViewUI", "edw onServiceDisconnected");
    this.hnv.cOg = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.gt
 * JD-Core Version:    0.6.2
 */