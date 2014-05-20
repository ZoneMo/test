package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class xo extends rs
{
  public int dGR;
  public String eBo;
  public rv fAJ;
  public int fAL;
  public int fAU;
  public int fEd;
  public String fFn;
  public String fYh;
  public String fyE;
  public int fzS;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAJ == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyE != null)
      parama.A(2, this.fyE);
    parama.by(3, this.fzS);
    if (this.fYh != null)
      parama.A(4, this.fYh);
    if (this.eBo != null)
      parama.A(5, this.eBo);
    parama.by(6, this.fAL);
    parama.by(7, this.fEd);
    parama.by(8, this.fAU);
    if (this.fAJ != null)
    {
      parama.bv(9, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    parama.by(10, this.dGR);
    if (this.fFn != null)
      parama.A(11, this.fFn);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyE != null)
      i += a.a.a.a.z(2, this.fyE);
    int j = i + a.a.a.a.br(3, this.fzS);
    if (this.fYh != null)
      j += a.a.a.a.z(4, this.fYh);
    if (this.eBo != null)
      j += a.a.a.a.z(5, this.eBo);
    int k = j + a.a.a.a.br(6, this.fAL) + a.a.a.a.br(7, this.fEd) + a.a.a.a.br(8, this.fAU);
    if (this.fAJ != null)
      k += a.a.a.a.bs(9, this.fAJ.ns());
    int m = k + a.a.a.a.br(10, this.dGR);
    if (this.fFn != null)
      m += a.a.a.a.z(11, this.fFn);
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xo
 * JD-Core Version:    0.6.2
 */