package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class dy extends com.tencent.mm.am.a
{
  public rw fEI;
  public rw fEN;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fEI == null) || (this.fEN == null))
      throw new b("Not all required fields were included");
    if (this.fEI != null)
    {
      parama.bv(1, this.fEI.ns());
      this.fEI.a(parama);
    }
    if (this.fEN != null)
    {
      parama.bv(2, this.fEN.ns());
      this.fEN.a(parama);
    }
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    if (this.fEN != null)
      i += a.a.a.a.bs(2, this.fEN.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dy
 * JD-Core Version:    0.6.2
 */