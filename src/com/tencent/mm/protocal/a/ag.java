package com.tencent.mm.protocal.a;

public final class ag extends rs
{
  public int dGR;
  public int fAE;
  public int fAF;
  public int fAG;
  public int fAH;
  public String fAi;
  public int fAj;
  public String fzT;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAi != null)
      parama.A(2, this.fAi);
    parama.by(3, this.fAj);
    if (this.fzT != null)
      parama.A(4, this.fzT);
    parama.by(5, this.fAE);
    parama.by(6, this.fAF);
    parama.by(7, this.fAG);
    parama.by(8, this.dGR);
    parama.by(9, this.fAH);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAi != null)
      i += a.a.a.a.z(2, this.fAi);
    int j = i + a.a.a.a.br(3, this.fAj);
    if (this.fzT != null)
      j += a.a.a.a.z(4, this.fzT);
    return j + a.a.a.a.br(5, this.fAE) + a.a.a.a.br(6, this.fAF) + a.a.a.a.br(7, this.fAG) + a.a.a.a.br(8, this.dGR) + a.a.a.a.br(9, this.fAH);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ag
 * JD-Core Version:    0.6.2
 */