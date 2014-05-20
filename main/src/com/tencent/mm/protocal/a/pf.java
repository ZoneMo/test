package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class pf extends rs
{
  public rv fRA;
  public int fRB;
  public String fRC;
  public String fRD;
  public int fRE;
  public int fRz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fRA == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fRz);
    if (this.fRA != null)
    {
      parama.bv(3, this.fRA.ns());
      this.fRA.a(parama);
    }
    parama.by(4, this.fRB);
    if (this.fRC != null)
      parama.A(5, this.fRC);
    if (this.fRD != null)
      parama.A(6, this.fRD);
    parama.by(7, this.fRE);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fRz);
    if (this.fRA != null)
      j += a.a.a.a.bs(3, this.fRA.ns());
    int k = j + a.a.a.a.br(4, this.fRB);
    if (this.fRC != null)
      k += a.a.a.a.z(5, this.fRC);
    if (this.fRD != null)
      k += a.a.a.a.z(6, this.fRD);
    return k + a.a.a.a.br(7, this.fRE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pf
 * JD-Core Version:    0.6.2
 */