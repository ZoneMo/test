package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ng extends rs
{
  public rv fAV;
  public int fLx;
  public String fNW;
  public String fNX;
  public String fNY;
  public int fNZ;
  public int fOa;
  public int fOb;
  public int fOc;
  public int fOd;
  public rv fOe;
  public int fOf;
  public int fOg;
  public int fOh;
  public int fOi;
  public int fzu;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fAV == null) || (this.fOe == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fNW != null)
      parama.A(2, this.fNW);
    if (this.fNX != null)
      parama.A(3, this.fNX);
    if (this.fNY != null)
      parama.A(4, this.fNY);
    parama.by(5, this.fzu);
    parama.by(6, this.fNZ);
    if (this.fAV != null)
    {
      parama.bv(7, this.fAV.ns());
      this.fAV.a(parama);
    }
    parama.by(8, this.fOa);
    parama.by(9, this.fOb);
    parama.by(10, this.fOc);
    parama.by(11, this.fOd);
    if (this.fOe != null)
    {
      parama.bv(12, this.fOe.ns());
      this.fOe.a(parama);
    }
    parama.by(13, this.fOf);
    parama.by(14, this.fOg);
    parama.by(15, this.fOh);
    parama.by(16, this.fOi);
    parama.by(17, this.fLx);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fNW != null)
      i += a.a.a.a.z(2, this.fNW);
    if (this.fNX != null)
      i += a.a.a.a.z(3, this.fNX);
    if (this.fNY != null)
      i += a.a.a.a.z(4, this.fNY);
    int j = i + a.a.a.a.br(5, this.fzu) + a.a.a.a.br(6, this.fNZ);
    if (this.fAV != null)
      j += a.a.a.a.bs(7, this.fAV.ns());
    int k = j + a.a.a.a.br(8, this.fOa) + a.a.a.a.br(9, this.fOb) + a.a.a.a.br(10, this.fOc) + a.a.a.a.br(11, this.fOd);
    if (this.fOe != null)
      k += a.a.a.a.bs(12, this.fOe.ns());
    return k + a.a.a.a.br(13, this.fOf) + a.a.a.a.br(14, this.fOg) + a.a.a.a.br(15, this.fOh) + a.a.a.a.br(16, this.fOi) + a.a.a.a.br(17, this.fLx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ng
 * JD-Core Version:    0.6.2
 */