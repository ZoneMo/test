package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.sdk.platformtools.ce;

final class ap extends ce
{
  ap(ao paramao, int paramInt)
  {
    super(1000L, null);
  }

  protected final Object run()
  {
    try
    {
      ao.eG(this.cmL);
      label12: return null;
    }
    catch (RemoteException localRemoteException)
    {
      break label12;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.ap
 * JD-Core Version:    0.6.2
 */