package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ef extends rs
{
  public int dGR;
  public int fAE;
  public pr fEX;
  public int fEY;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEX == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fEX != null)
    {
      parama.bv(2, this.fEX.ns());
      this.fEX.a(parama);
    }
    parama.by(3, this.fAE);
    parama.by(4, this.fEY);
    parama.by(5, this.dGR);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fEX != null)
      i += a.a.a.a.bs(2, this.fEX.ns());
    return i + a.a.a.a.br(3, this.fAE) + a.a.a.a.br(4, this.fEY) + a.a.a.a.br(5, this.dGR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ef
 * JD-Core Version:    0.6.2
 */