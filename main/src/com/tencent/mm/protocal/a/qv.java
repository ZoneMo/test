package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class qv extends com.tencent.mm.am.a
{
  public rw fEI;
  public rw fze;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fze == null) || (this.fEI == null))
      throw new b("Not all required fields were included");
    if (this.fze != null)
    {
      parama.bv(1, this.fze.ns());
      this.fze.a(parama);
    }
    if (this.fEI != null)
    {
      parama.bv(2, this.fEI.ns());
      this.fEI.a(parama);
    }
  }

  public final int ns()
  {
    rw localrw = this.fze;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fze.ns());
    if (this.fEI != null)
      i += a.a.a.a.bs(2, this.fEI.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qv
 * JD-Core Version:    0.6.2
 */