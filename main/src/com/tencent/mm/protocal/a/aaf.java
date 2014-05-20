package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class aaf extends com.tencent.mm.am.a
{
  public rw fXD;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fXD == null)
      throw new b("Not all required fields were included");
    if (this.fXD != null)
    {
      parama.bv(1, this.fXD.ns());
      this.fXD.a(parama);
    }
  }

  public final int ns()
  {
    rw localrw = this.fXD;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fXD.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aaf
 * JD-Core Version:    0.6.2
 */