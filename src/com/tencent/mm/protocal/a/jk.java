package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class jk extends rs
{
  public double Tl;
  public double Tm;
  public int fBj;
  public String fLB;
  public rv fLC;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fLC == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fyJ);
    parama.by(3, this.fBj);
    if (this.fLB != null)
      parama.A(4, this.fLB);
    if (this.fLC != null)
    {
      parama.bv(5, this.fLC.ns());
      this.fLC.a(parama);
    }
    parama.a(6, this.Tm);
    parama.a(7, this.Tl);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fyJ) + a.a.a.a.br(3, this.fBj);
    if (this.fLB != null)
      j += a.a.a.a.z(4, this.fLB);
    if (this.fLC != null)
      j += a.a.a.a.bs(5, this.fLC.ns());
    int k = j + a.a.a.a.oJ(6);
    return k + a.a.a.a.oJ(7);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jk
 * JD-Core Version:    0.6.2
 */