package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class wu extends rs
{
  public int fXG;
  public int fXH;
  public rv fXI;
  public rv fXJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fXI == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fXG);
    parama.by(3, this.fXH);
    if (this.fXI != null)
    {
      parama.bv(4, this.fXI.ns());
      this.fXI.a(parama);
    }
    if (this.fXJ != null)
    {
      parama.bv(5, this.fXJ.ns());
      this.fXJ.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fXG) + a.a.a.a.br(3, this.fXH);
    if (this.fXI != null)
      j += a.a.a.a.bs(4, this.fXI.ns());
    if (this.fXJ != null)
      j += a.a.a.a.bs(5, this.fXJ.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wu
 * JD-Core Version:    0.6.2
 */