package com.tencent.mm.protocal.a;

public final class i extends rs
{
  public int dGR;
  public String fzj;
  public int fzk;
  public String fzl;
  public String fzm;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fzj != null)
      parama.A(2, this.fzj);
    parama.by(3, this.dGR);
    parama.by(4, this.fzk);
    if (this.fzl != null)
      parama.A(5, this.fzl);
    if (this.fzm != null)
      parama.A(6, this.fzm);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fzj != null)
      i += a.a.a.a.z(2, this.fzj);
    int j = i + a.a.a.a.br(3, this.dGR) + a.a.a.a.br(4, this.fzk);
    if (this.fzl != null)
      j += a.a.a.a.z(5, this.fzl);
    if (this.fzm != null)
      j += a.a.a.a.z(6, this.fzm);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.i
 * JD-Core Version:    0.6.2
 */