package com.tencent.mm.protocal.a;

public final class u extends com.tencent.mm.am.a
{
  public int dGR;
  public String dGS;
  public String fyE;
  public int fzS;
  public String fzT;
  public rv fzU;
  public int fzV;
  public int fzW;
  public String fzp;
  public String fzq;
  public int fzy;
  public String fzz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzp != null)
      parama.A(1, this.fzp);
    if (this.fyE != null)
      parama.A(2, this.fyE);
    parama.by(3, this.fzS);
    if (this.fzq != null)
      parama.A(4, this.fzq);
    parama.by(5, this.dGR);
    if (this.dGS != null)
      parama.A(6, this.dGS);
    parama.by(7, this.fzy);
    if (this.fzT != null)
      parama.A(8, this.fzT);
    if (this.fzU != null)
    {
      parama.bv(9, this.fzU.ns());
      this.fzU.a(parama);
    }
    parama.by(10, this.fzV);
    parama.by(11, this.fzW);
    if (this.fzz != null)
      parama.A(12, this.fzz);
  }

  public final int ns()
  {
    String str = this.fzp;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzp);
    if (this.fyE != null)
      i += a.a.a.a.z(2, this.fyE);
    int j = i + a.a.a.a.br(3, this.fzS);
    if (this.fzq != null)
      j += a.a.a.a.z(4, this.fzq);
    int k = j + a.a.a.a.br(5, this.dGR);
    if (this.dGS != null)
      k += a.a.a.a.z(6, this.dGS);
    int m = k + a.a.a.a.br(7, this.fzy);
    if (this.fzT != null)
      m += a.a.a.a.z(8, this.fzT);
    if (this.fzU != null)
      m += a.a.a.a.bs(9, this.fzU.ns());
    int n = m + a.a.a.a.br(10, this.fzV) + a.a.a.a.br(11, this.fzW);
    if (this.fzz != null)
      n += a.a.a.a.z(12, this.fzz);
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.u
 * JD-Core Version:    0.6.2
 */