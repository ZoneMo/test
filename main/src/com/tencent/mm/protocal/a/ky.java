package com.tencent.mm.protocal.a;

public final class ky extends rs
{
  public int fAL;
  public int fEd;
  public int fJD;
  public int fMB;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fMB);
    parama.by(3, this.fAL);
    parama.by(4, this.fEd);
    parama.by(5, this.fJD);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fMB) + a.a.a.a.br(3, this.fAL) + a.a.a.a.br(4, this.fEd) + a.a.a.a.br(5, this.fJD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ky
 * JD-Core Version:    0.6.2
 */