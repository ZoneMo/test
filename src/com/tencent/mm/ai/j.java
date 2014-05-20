package com.tencent.mm.ai;

import com.tencent.mm.n.m;
import com.tencent.mm.sdk.platformtools.az;

final class j
  implements az
{
  j(g paramg)
  {
  }

  public final boolean ok()
  {
    if (this.cAI.a(g.f(this.cAI), g.d(this.cAI)) == -1)
    {
      g.a(this.cAI, 0 - (10000 + com.tencent.mm.compatible.g.j.qe()));
      g.d(this.cAI).a(3, -1, "doScene failed", this.cAI);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ai.j
 * JD-Core Version:    0.6.2
 */