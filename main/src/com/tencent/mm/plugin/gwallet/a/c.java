package com.tencent.mm.plugin.gwallet.a;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.a.a.a;
import com.tencent.mm.sdk.platformtools.aa;

final class c
  implements ServiceConnection
{
  c(b paramb, h paramh)
  {
  }

  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aa.d("MicroMsg.IabHelper", "Billing service connected.");
    b.a(this.dsY, com.android.a.a.b.a(paramIBinder));
    String str = b.a(this.dsY).getPackageName();
    try
    {
      aa.d("MicroMsg.IabHelper", "Checking for in-app billing 3 support.");
      int i = b.b(this.dsY).a(3, str, "inapp");
      if (i != 0)
      {
        if (this.dsX != null)
          this.dsX.a(new k(i, "Error checking for billing v3 support."));
        this.dsY.dsT = false;
        return;
      }
      aa.d("MicroMsg.IabHelper", "In-app billing version 3 supported for " + str);
      int j = b.b(this.dsY).a(3, str, "subs");
      if (j == 0)
      {
        aa.d("MicroMsg.IabHelper", "Subscriptions AVAILABLE.");
        this.dsY.dsT = true;
      }
      while (true)
      {
        b.c(this.dsY);
        if (this.dsX == null)
          break;
        this.dsX.a(new k(0, "Setup successful."));
        return;
        aa.d("MicroMsg.IabHelper", "Subscriptions NOT AVAILABLE. Response: " + j);
      }
    }
    catch (RemoteException localRemoteException)
    {
      if (this.dsX != null)
        this.dsX.a(new k(-1001, "RemoteException while setting up in-app billing."));
    }
  }

  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    aa.d("MicroMsg.IabHelper", "Billing service disconnected.");
    b.a(this.dsY, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.a.c
 * JD-Core Version:    0.6.2
 */