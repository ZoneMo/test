package com.tencent.mm.network;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class bo
  implements az
{
  bo(bn parambn)
  {
  }

  public final boolean ok()
  {
    int i = bn.b(this.cFG).beginBroadcast();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(i);
    aa.d("MicroMsg.NetworkEvent", "listeners ct : %d", arrayOfObject);
    int j = i - 1;
    while (true)
    {
      ag localag;
      if (j >= 0)
        localag = (ag)bn.b(this.cFG).getBroadcastItem(j);
      try
      {
        localag.ct(bn.c(this.cFG));
        label69: j--;
        continue;
        bn.b(this.cFG).finishBroadcast();
        return false;
      }
      catch (RemoteException localRemoteException)
      {
        break label69;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bo
 * JD-Core Version:    0.6.2
 */