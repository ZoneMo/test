package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class jg extends rs
{
  public int fAL;
  public int fAU;
  public int fEd;
  public int fLx;
  public int fzo;
  public rw fzs;
  public rw fzt;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fzs == null) || (this.fzt == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fzo);
    if (this.fzs != null)
    {
      parama.bv(3, this.fzs.ns());
      this.fzs.a(parama);
    }
    if (this.fzt != null)
    {
      parama.bv(4, this.fzt.ns());
      this.fzt.a(parama);
    }
    parama.by(5, this.fAL);
    parama.by(6, this.fEd);
    parama.by(7, this.fAU);
    parama.by(8, this.fLx);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fzo);
    if (this.fzs != null)
      j += a.a.a.a.bs(3, this.fzs.ns());
    if (this.fzt != null)
      j += a.a.a.a.bs(4, this.fzt.ns());
    return j + a.a.a.a.br(5, this.fAL) + a.a.a.a.br(6, this.fEd) + a.a.a.a.br(7, this.fAU) + a.a.a.a.br(8, this.fLx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jg
 * JD-Core Version:    0.6.2
 */