package com.tencent.mm.protocal.a;

public final class iy extends rs
{
  public String eBo;
  public int fAL;
  public int fEd;
  public int fLb;
  public int fLc;
  public String fLd;
  public int fLe;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    parama.by(3, this.fLb);
    parama.by(4, this.fLc);
    if (this.fLd != null)
      parama.A(5, this.fLd);
    parama.by(6, this.fAL);
    parama.by(7, this.fEd);
    parama.by(8, this.fLe);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    int j = i + a.a.a.a.br(3, this.fLb) + a.a.a.a.br(4, this.fLc);
    if (this.fLd != null)
      j += a.a.a.a.z(5, this.fLd);
    return j + a.a.a.a.br(6, this.fAL) + a.a.a.a.br(7, this.fEd) + a.a.a.a.br(8, this.fLe);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.iy
 * JD-Core Version:    0.6.2
 */