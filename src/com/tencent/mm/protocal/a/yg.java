package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class yg extends rs
{
  public int fAN;
  public int fFg;
  public String fGB;
  public int fOc;
  public int fOd;
  public rv fOe;
  public int fOf;
  public int fYC;
  public int fYD;
  public int fYE;
  public String fYF;
  public int fYG;
  public int fYH;
  public rv fYI;
  public int fYJ;
  public int fYK;
  public String fYL;
  public String fYM;
  public String fzT;
  public String fzp;
  public String fzq;
  public String fzz;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fOe == null) || (this.fYI == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fzT != null)
      parama.A(2, this.fzT);
    if (this.fzp != null)
      parama.A(3, this.fzp);
    if (this.fzq != null)
      parama.A(4, this.fzq);
    parama.by(5, this.fOc);
    parama.by(6, this.fOd);
    if (this.fOe != null)
    {
      parama.bv(7, this.fOe.ns());
      this.fOe.a(parama);
    }
    parama.by(8, this.fYG);
    parama.by(9, this.fYH);
    if (this.fYI != null)
    {
      parama.bv(10, this.fYI.ns());
      this.fYI.a(parama);
    }
    parama.by(11, this.fYJ);
    parama.by(12, this.fFg);
    parama.by(13, this.fOf);
    parama.by(14, this.fYK);
    if (this.fzz != null)
      parama.A(15, this.fzz);
    if (this.fYL != null)
      parama.A(16, this.fYL);
    if (this.fGB != null)
      parama.A(17, this.fGB);
    parama.by(18, this.fAN);
    if (this.fYM != null)
      parama.A(19, this.fYM);
    parama.by(20, this.fYC);
    parama.by(21, this.fYD);
    parama.by(22, this.fYE);
    if (this.fYF != null)
      parama.A(23, this.fYF);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fzT != null)
      i += a.a.a.a.z(2, this.fzT);
    if (this.fzp != null)
      i += a.a.a.a.z(3, this.fzp);
    if (this.fzq != null)
      i += a.a.a.a.z(4, this.fzq);
    int j = i + a.a.a.a.br(5, this.fOc) + a.a.a.a.br(6, this.fOd);
    if (this.fOe != null)
      j += a.a.a.a.bs(7, this.fOe.ns());
    int k = j + a.a.a.a.br(8, this.fYG) + a.a.a.a.br(9, this.fYH);
    if (this.fYI != null)
      k += a.a.a.a.bs(10, this.fYI.ns());
    int m = k + a.a.a.a.br(11, this.fYJ) + a.a.a.a.br(12, this.fFg) + a.a.a.a.br(13, this.fOf) + a.a.a.a.br(14, this.fYK);
    if (this.fzz != null)
      m += a.a.a.a.z(15, this.fzz);
    if (this.fYL != null)
      m += a.a.a.a.z(16, this.fYL);
    if (this.fGB != null)
      m += a.a.a.a.z(17, this.fGB);
    int n = m + a.a.a.a.br(18, this.fAN);
    if (this.fYM != null)
      n += a.a.a.a.z(19, this.fYM);
    int i1 = n + a.a.a.a.br(20, this.fYC) + a.a.a.a.br(21, this.fYD) + a.a.a.a.br(22, this.fYE);
    if (this.fYF != null)
      i1 += a.a.a.a.z(23, this.fYF);
    return i1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yg
 * JD-Core Version:    0.6.2
 */