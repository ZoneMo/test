package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class yc extends rs
{
  public rv fAJ;
  public int fAL;
  public int fAU;
  public int fEd;
  public rw fYt;
  public rw fYu;
  public int fYv;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fYt == null) || (this.fYu == null) || (this.fAJ == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fYt != null)
    {
      parama.bv(2, this.fYt.ns());
      this.fYt.a(parama);
    }
    if (this.fYu != null)
    {
      parama.bv(3, this.fYu.ns());
      this.fYu.a(parama);
    }
    parama.by(4, this.fAL);
    parama.by(5, this.fEd);
    parama.by(6, this.fAU);
    if (this.fAJ != null)
    {
      parama.bv(7, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    parama.by(8, this.fYv);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fYt != null)
      i += a.a.a.a.bs(2, this.fYt.ns());
    if (this.fYu != null)
      i += a.a.a.a.bs(3, this.fYu.ns());
    int j = i + a.a.a.a.br(4, this.fAL) + a.a.a.a.br(5, this.fEd) + a.a.a.a.br(6, this.fAU);
    if (this.fAJ != null)
      j += a.a.a.a.bs(7, this.fAJ.ns());
    return j + a.a.a.a.br(8, this.fYv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yc
 * JD-Core Version:    0.6.2
 */