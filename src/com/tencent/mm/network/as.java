package com.tencent.mm.network;

import android.os.RemoteException;
import com.tencent.mm.sdk.platformtools.ce;

final class as extends ce
{
  as(ao paramao, Integer paramInteger, ak paramak, ac paramac)
  {
    super(3000L, paramInteger);
  }

  private Integer EV()
  {
    try
    {
      Integer localInteger = Integer.valueOf(ao.a(this.cEG, this.cEJ, this.cEK));
      return localInteger;
    }
    catch (RemoteException localRemoteException)
    {
      ao.d(this.cEG);
    }
    return Integer.valueOf(-1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.as
 * JD-Core Version:    0.6.2
 */