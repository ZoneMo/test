package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ye extends rs
{
  public rv fAJ;
  public int fAL;
  public int fAN;
  public String fAS;
  public int fAU;
  public int fEd;
  public String fGB;
  public int fLx;
  public int fUN;
  public int fWg;
  public int fYA;
  public String fYB;
  public int fYC;
  public int fYD;
  public int fYE;
  public String fYF;
  public rw fYw;
  public String fYx;
  public String fYy;
  public int fYz;
  public rw fzs;
  public rw fzt;
  public int fzu;
  public String fzz;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fYw == null) || (this.fzs == null) || (this.fzt == null) || (this.fAJ == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fYw != null)
    {
      parama.bv(2, this.fYw.ns());
      this.fYw.a(parama);
    }
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
    if (this.fAJ != null)
    {
      parama.bv(8, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    parama.by(9, this.fzu);
    if (this.fzz != null)
      parama.A(10, this.fzz);
    parama.by(11, this.fLx);
    parama.by(12, this.fUN);
    parama.by(13, this.fWg);
    if (this.fAS != null)
      parama.A(14, this.fAS);
    if (this.fYx != null)
      parama.A(15, this.fYx);
    if (this.fYy != null)
      parama.A(16, this.fYy);
    if (this.fGB != null)
      parama.A(17, this.fGB);
    parama.by(18, this.fAN);
    parama.by(19, this.fYz);
    parama.by(20, this.fYA);
    if (this.fYB != null)
      parama.A(21, this.fYB);
    parama.by(22, this.fYC);
    parama.by(23, this.fYD);
    parama.by(24, this.fYE);
    if (this.fYF != null)
      parama.A(25, this.fYF);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fYw != null)
      i += a.a.a.a.bs(2, this.fYw.ns());
    if (this.fzs != null)
      i += a.a.a.a.bs(3, this.fzs.ns());
    if (this.fzt != null)
      i += a.a.a.a.bs(4, this.fzt.ns());
    int j = i + a.a.a.a.br(5, this.fAL) + a.a.a.a.br(6, this.fEd) + a.a.a.a.br(7, this.fAU);
    if (this.fAJ != null)
      j += a.a.a.a.bs(8, this.fAJ.ns());
    int k = j + a.a.a.a.br(9, this.fzu);
    if (this.fzz != null)
      k += a.a.a.a.z(10, this.fzz);
    int m = k + a.a.a.a.br(11, this.fLx) + a.a.a.a.br(12, this.fUN) + a.a.a.a.br(13, this.fWg);
    if (this.fAS != null)
      m += a.a.a.a.z(14, this.fAS);
    if (this.fYx != null)
      m += a.a.a.a.z(15, this.fYx);
    if (this.fYy != null)
      m += a.a.a.a.z(16, this.fYy);
    if (this.fGB != null)
      m += a.a.a.a.z(17, this.fGB);
    int n = m + a.a.a.a.br(18, this.fAN) + a.a.a.a.br(19, this.fYz) + a.a.a.a.br(20, this.fYA);
    if (this.fYB != null)
      n += a.a.a.a.z(21, this.fYB);
    int i1 = n + a.a.a.a.br(22, this.fYC) + a.a.a.a.br(23, this.fYD) + a.a.a.a.br(24, this.fYE);
    if (this.fYF != null)
      i1 += a.a.a.a.z(25, this.fYF);
    return i1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ye
 * JD-Core Version:    0.6.2
 */