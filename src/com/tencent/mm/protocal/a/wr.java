package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class wr extends com.tencent.mm.am.a
{
  public int fNl;
  public rw fXD;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fXD == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fNl);
    if (this.fXD != null)
    {
      parama.bv(2, this.fXD.ns());
      this.fXD.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fNl);
    if (this.fXD != null)
      i += a.a.a.a.bs(2, this.fXD.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wr
 * JD-Core Version:    0.6.2
 */