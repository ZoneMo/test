package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.sdk.platformtools.ce;

final class bc extends ce
{
  bc(bb parambb, ak paramak, int paramInt1, int paramInt2)
  {
    super(1000L, null);
  }

  protected final Object run()
  {
    try
    {
      ao localao = bb.a(this.cFf);
      ak localak = this.cFe;
      ao.a(localao, localak);
      label28: return null;
    }
    catch (RemoteException localRemoteException)
    {
      break label28;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bc
 * JD-Core Version:    0.6.2
 */