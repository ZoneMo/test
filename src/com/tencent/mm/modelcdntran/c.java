package com.tencent.mm.modelcdntran;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.network.ah;
import com.tencent.mm.sdk.platformtools.aa;

final class c extends ah
{
  c(b paramb)
  {
  }

  public final void ct(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.CDNTransportService", "cdntra onNetworkChange st:%d ", arrayOfObject);
    if ((paramInt != 5) && (paramInt != 1));
    while (!be.se())
      return;
    be.uA().d(new i());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.c
 * JD-Core Version:    0.6.2
 */