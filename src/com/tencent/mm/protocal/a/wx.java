package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class wx extends rs
{
  public int fAL;
  public int fEd;
  public rv fEz;
  public int fFi;
  public String fNY;
  public int fSA;
  public int fzu;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEz == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fzu);
    parama.by(3, this.fSA);
    if (this.fEz != null)
    {
      parama.bv(4, this.fEz.ns());
      this.fEz.a(parama);
    }
    parama.by(5, this.fEd);
    parama.by(6, this.fAL);
    if (this.fNY != null)
      parama.A(7, this.fNY);
    parama.by(8, this.fFi);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fzu) + a.a.a.a.br(3, this.fSA);
    if (this.fEz != null)
      j += a.a.a.a.bs(4, this.fEz.ns());
    int k = j + a.a.a.a.br(5, this.fEd) + a.a.a.a.br(6, this.fAL);
    if (this.fNY != null)
      k += a.a.a.a.z(7, this.fNY);
    return k + a.a.a.a.br(8, this.fFi);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wx
 * JD-Core Version:    0.6.2
 */