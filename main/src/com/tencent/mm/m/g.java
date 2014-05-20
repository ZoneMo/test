package com.tencent.mm.m;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class g
  implements Runnable
{
  g(e parame, String paramString)
  {
  }

  public final void run()
  {
    if (cj.hX(this.ckt));
    label10: m localm;
    do
    {
      x localx;
      do
      {
        y localy;
        do
        {
          break label10;
          do
            return;
          while (this.ckt.equals(e.a(this.cks)));
          localy = e.vK();
        }
        while (localy == null);
        localx = localy.eq(this.ckt);
      }
      while ((localx == null) || (!localx.getUsername().equals(this.ckt)) || (!localx.vZ()));
      if (cj.hX(localx.vW()))
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.ckt;
        aa.c("MicroMsg.AvatarService", "dkhurl user has no url [%s]", arrayOfObject);
        return;
      }
      localm = e.vL();
    }
    while (localm == null);
    localm.i(this.ckt, false);
    localm.i(this.ckt, true);
    this.cks.dY(this.ckt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.g
 * JD-Core Version:    0.6.2
 */