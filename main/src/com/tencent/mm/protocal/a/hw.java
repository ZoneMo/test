package com.tencent.mm.protocal.a;

public final class hw extends rs
{
  public int dGR;
  public String fzH;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.dGR);
    if (this.fzH != null)
      parama.A(3, this.fzH);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.dGR);
    if (this.fzH != null)
      j += a.a.a.a.z(3, this.fzH);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.hw
 * JD-Core Version:    0.6.2
 */