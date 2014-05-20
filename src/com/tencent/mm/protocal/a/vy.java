package com.tencent.mm.protocal.a;

public final class vy extends rs
{
  public int fXr;
  public String fzT;
  public String fzp;
  public String fzq;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fXr);
    if (this.fzp != null)
      parama.A(3, this.fzp);
    if (this.fzq != null)
      parama.A(4, this.fzq);
    if (this.fzT != null)
      parama.A(5, this.fzT);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fXr);
    if (this.fzp != null)
      j += a.a.a.a.z(3, this.fzp);
    if (this.fzq != null)
      j += a.a.a.a.z(4, this.fzq);
    if (this.fzT != null)
      j += a.a.a.a.z(5, this.fzT);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vy
 * JD-Core Version:    0.6.2
 */