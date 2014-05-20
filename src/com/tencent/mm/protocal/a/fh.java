package com.tencent.mm.protocal.a;

public final class fh extends rs
{
  public String fGd;
  public int fGe;
  public long fGf;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fGe);
    parama.k(3, this.fGf);
    if (this.fGd != null)
      parama.A(4, this.fGd);
    parama.by(5, this.fyJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fGe) + a.a.a.a.i(3, this.fGf);
    if (this.fGd != null)
      j += a.a.a.a.z(4, this.fGd);
    return j + a.a.a.a.br(5, this.fyJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fh
 * JD-Core Version:    0.6.2
 */