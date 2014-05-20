package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class aah extends rs
{
  public int fGe;
  public long fGf;
  public int fIw;
  public rv fIx;
  public String fVg;
  public zu gal;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fIx == null) || (this.gal == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVg != null)
      parama.A(2, this.fVg);
    parama.by(3, this.fGe);
    if (this.fIx != null)
    {
      parama.bv(4, this.fIx.ns());
      this.fIx.a(parama);
    }
    if (this.gal != null)
    {
      parama.bv(5, this.gal.ns());
      this.gal.a(parama);
    }
    parama.k(6, this.fGf);
    parama.by(7, this.fIw);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVg != null)
      i += a.a.a.a.z(2, this.fVg);
    int j = i + a.a.a.a.br(3, this.fGe);
    if (this.fIx != null)
      j += a.a.a.a.bs(4, this.fIx.ns());
    if (this.gal != null)
      j += a.a.a.a.bs(5, this.gal.ns());
    return j + a.a.a.a.i(6, this.fGf) + a.a.a.a.br(7, this.fIw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aah
 * JD-Core Version:    0.6.2
 */