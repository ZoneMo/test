package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class xy extends rs
{
  public String eBo;
  public int fAE;
  public rv fAJ;
  public int fAK;
  public String fYk;
  public int fYl;
  public int fYm;
  public int fYn;
  public int fYo;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAJ == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fAJ != null)
    {
      parama.bv(3, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    parama.by(4, this.fAE);
    if (this.fYk != null)
      parama.A(5, this.fYk);
    parama.by(6, this.fAK);
    parama.by(7, this.fYl);
    parama.by(8, this.fYm);
    parama.by(9, this.fYn);
    parama.by(10, this.fYo);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fAJ != null)
      i += a.a.a.a.bs(3, this.fAJ.ns());
    int j = i + a.a.a.a.br(4, this.fAE);
    if (this.fYk != null)
      j += a.a.a.a.z(5, this.fYk);
    return j + a.a.a.a.br(6, this.fAK) + a.a.a.a.br(7, this.fYl) + a.a.a.a.br(8, this.fYm) + a.a.a.a.br(9, this.fYn) + a.a.a.a.br(10, this.fYo);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xy
 * JD-Core Version:    0.6.2
 */