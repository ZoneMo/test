package com.tencent.mm.n;

import android.os.RemoteException;
import com.tencent.mm.network.y;

final class au
  implements Runnable
{
  au(ar paramar, y paramy, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    ar localar = new ar(new w(), this.cmQ.handler);
    try
    {
      this.cmS.a(localar, this.cmT, this.cmU, "");
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.au
 * JD-Core Version:    0.6.2
 */