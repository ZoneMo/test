package com.tencent.mm.n;

import android.os.RemoteException;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.o;
import com.tencent.mm.network.y;
import com.tencent.mm.pointers.PString;

final class at
  implements Runnable
{
  at(ar paramar, o paramo, y paramy, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    PString localPString = new PString();
    ar localar = new ar(ar.a(this.cmQ).a(new al(this.cmR), localPString), this.cmQ.handler);
    try
    {
      this.cmS.a(localar, this.cmT, this.cmU, localPString.value);
      return;
    }
    catch (RemoteException localRemoteException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.at
 * JD-Core Version:    0.6.2
 */