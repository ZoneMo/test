package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class om extends com.tencent.mm.am.a
{
  public rw fEI;
  public int fzr;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEI == null)
      throw new b("Not all required fields were included");
    if (this.fEI != null)
    {
      parama.bv(1, this.fEI.ns());
      this.fEI.a(parama);
    }
    parama.by(2, this.fzr);
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    return i + a.a.a.a.br(2, this.fzr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.om
 * JD-Core Version:    0.6.2
 */