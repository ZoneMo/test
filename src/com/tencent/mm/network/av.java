package com.tencent.mm.network;

import com.tencent.mm.sdk.platformtools.ce;

final class av extends ce
{
  av(ao paramao, Object paramObject, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(3000L, paramObject);
  }

  public final Object run()
  {
    Java2C.setDebugIP(this.cEV, this.cEW, this.cEX, this.cEY);
    Java2C.onNetworkChange();
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.av
 * JD-Core Version:    0.6.2
 */