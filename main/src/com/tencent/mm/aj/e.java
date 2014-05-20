package com.tencent.mm.aj;

import com.tencent.mm.a.c;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class e
  implements az
{
  e(d paramd)
  {
  }

  public final boolean ok()
  {
    long l = c.ar(d.a(this.cDu));
    aa.d("MicroMsg.NetSceneVoiceInput", j.qg() + " onTimerExpired: file:" + d.a(this.cDu) + " nowlen:" + l + " oldoff:" + d.b(this.cDu) + " isFin:" + d.c(this.cDu));
    if ((l - d.b(this.cDu) < 3300L) && (!d.c(this.cDu)))
      return true;
    if (this.cDu.a(d.d(this.cDu), d.e(this.cDu)) == -1)
    {
      d.a(this.cDu, 40000 + j.qe());
      d.e(this.cDu).a(3, -1, "doScene failed", this.cDu);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aj.e
 * JD-Core Version:    0.6.2
 */