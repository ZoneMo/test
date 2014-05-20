package com.tencent.mm.aj;

import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class c
  implements az
{
  c(b paramb)
  {
  }

  public final boolean ok()
  {
    long l = com.tencent.mm.a.c.ar(b.a(this.cDs));
    aa.d("MicroMsg.NetSceneVoiceAddr", j.qg() + " onTimerExpired: file:" + b.a(this.cDs) + " nowlen:" + l + " oldoff:" + b.b(this.cDs) + " isFin:" + b.c(this.cDs));
    if ((l - b.b(this.cDs) < 3300L) && (!b.c(this.cDs)))
      return true;
    if (this.cDs.a(b.d(this.cDs), b.e(this.cDs)) == -1)
    {
      b.a(this.cDs, 40000 + j.qe());
      b.e(this.cDs).a(3, -1, "doScene failed", this.cDs);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aj.c
 * JD-Core Version:    0.6.2
 */