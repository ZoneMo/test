package com.tencent.mm.booter;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bi;

final class b
  implements bi
{
  b(a parama)
  {
  }

  public final void bp(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
      do
      {
        return;
        aa.v("MicroMsg.BackgroundPlayer", "call end");
      }
      while (!a.a(this.bZk));
      a.a(this.bZk, false);
      this.bZk.og();
      return;
    case 1:
    case 2:
    }
    aa.v("MicroMsg.BackgroundPlayer", "call start");
    a.a(this.bZk, true);
    this.bZk.of();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.b
 * JD-Core Version:    0.6.2
 */