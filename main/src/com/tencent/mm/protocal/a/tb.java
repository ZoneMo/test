package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class tb extends rs
{
  public rw fEI;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEI == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fEI != null)
    {
      parama.bv(2, this.fEI.ns());
      this.fEI.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fEI != null)
      i += a.a.a.a.bs(2, this.fEI.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tb
 * JD-Core Version:    0.6.2
 */