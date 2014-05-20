package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class gu extends rt
{
  public final void a(a.a.a.c.a parama)
  {
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
  }

  public final int ns()
  {
    av localav = this.fTZ;
    int i = 0;
    if (localav != null)
      i = 0 + a.a.a.a.bs(1, this.fTZ.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gu
 * JD-Core Version:    0.6.2
 */