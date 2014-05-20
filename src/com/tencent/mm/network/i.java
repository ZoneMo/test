package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.network.a.a;
import com.tencent.mm.network.a.c;

final class i
  implements Runnable
{
  i(int paramInt1, c paramc, a parama, int paramInt2, int paramInt3, int paramInt4)
  {
  }

  public final void run()
  {
    try
    {
      if (this.cDW > 0)
      {
        this.cDX.a(4, 0, "", this.cDW, "wifiRecv:" + this.cDW, true);
        this.cDY.a(4, "", Integer.valueOf(this.cDW));
      }
      if (this.cDZ > 0)
      {
        this.cDX.a(5, 0, "", this.cDZ, "wifiSend:" + this.cDZ, true);
        this.cDY.a(5, "", Integer.valueOf(this.cDZ));
      }
      if (this.cEa > 0)
      {
        this.cDX.a(4, 0, "", this.cEa, "mobileRecv:" + this.cEa, false);
        this.cDY.a(4, "", Integer.valueOf(this.cEa));
      }
      if (this.cEb > 0)
      {
        this.cDX.a(5, 0, "", this.cEb, "mobileSend:" + this.cEb, false);
        this.cDY.a(5, "", Integer.valueOf(this.cEb));
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.i
 * JD-Core Version:    0.6.2
 */