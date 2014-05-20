package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.sdk.platformtools.ce;

final class ba extends ce
{
  ba(az paramaz, ak paramak, int paramInt1, int paramInt2, String paramString)
  {
    super(1000L, null);
  }

  protected final Object run()
  {
    try
    {
      ao localao = az.a(this.cFd);
      ak localak = this.cFb;
      ao.a(localao, localak, this.cFc);
      label32: return null;
    }
    catch (RemoteException localRemoteException)
    {
      break label32;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.ba
 * JD-Core Version:    0.6.2
 */