package com.tencent.mm.af;

import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class b
  implements az
{
  b(a parama)
  {
  }

  public final boolean ok()
  {
    long l = c.ar(a.a(this.cxW));
    aa.d("MicroMsg.NetSceneUploadMedia", j.qg() + " onTimerExpired: file:" + a.a(this.cxW) + " nowlen:" + l + " oldoff:" + a.b(this.cxW));
    if (this.cxW.a(a.c(this.cxW), a.d(this.cxW)) == -1)
      a.d(this.cxW).a(3, -1, "doScene failed", this.cxW);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.af.b
 * JD-Core Version:    0.6.2
 */