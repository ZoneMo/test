package com.tencent.mm.protocal.a;

public final class wo extends rs
{
  public int fGe;
  public long fGf;
  public int fyJ;
  public int fzh;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fGe);
    parama.k(3, this.fGf);
    parama.by(4, this.fzh);
    parama.by(5, this.fyJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fGe) + a.a.a.a.i(3, this.fGf) + a.a.a.a.br(4, this.fzh) + a.a.a.a.br(5, this.fyJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wo
 * JD-Core Version:    0.6.2
 */