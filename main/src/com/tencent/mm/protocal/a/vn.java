package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class vn extends rs
{
  public int dGR;
  public int fAL;
  public String fAb;
  public rv fAz;
  public int fEd;
  public int fOu;
  public int fOv;
  public int fUN;
  public int fWg;
  public xe fWh;
  public String fzj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAz == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.dGR);
    parama.by(3, this.fEd);
    parama.by(4, this.fAL);
    if (this.fAz != null)
    {
      parama.bv(5, this.fAz.ns());
      this.fAz.a(parama);
    }
    if (this.fzj != null)
      parama.A(6, this.fzj);
    parama.by(7, this.fOu);
    parama.by(8, this.fOv);
    if (this.fAb != null)
      parama.A(9, this.fAb);
    parama.by(10, this.fWg);
    parama.by(11, this.fUN);
    if (this.fWh != null)
    {
      parama.bv(12, this.fWh.ns());
      this.fWh.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.dGR) + a.a.a.a.br(3, this.fEd) + a.a.a.a.br(4, this.fAL);
    if (this.fAz != null)
      j += a.a.a.a.bs(5, this.fAz.ns());
    if (this.fzj != null)
      j += a.a.a.a.z(6, this.fzj);
    int k = j + a.a.a.a.br(7, this.fOu) + a.a.a.a.br(8, this.fOv);
    if (this.fAb != null)
      k += a.a.a.a.z(9, this.fAb);
    int m = k + a.a.a.a.br(10, this.fWg) + a.a.a.a.br(11, this.fUN);
    if (this.fWh != null)
      m += a.a.a.a.bs(12, this.fWh.ns());
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vn
 * JD-Core Version:    0.6.2
 */