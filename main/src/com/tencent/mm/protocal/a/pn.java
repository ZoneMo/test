package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class pn extends com.tencent.mm.am.a
{
  public rw fDY;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fDY == null)
      throw new b("Not all required fields were included");
    if (this.fDY != null)
    {
      parama.bv(1, this.fDY.ns());
      this.fDY.a(parama);
    }
  }

  public final int ns()
  {
    rw localrw = this.fDY;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fDY.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pn
 * JD-Core Version:    0.6.2
 */