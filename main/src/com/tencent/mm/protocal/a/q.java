package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class q extends rs
{
  public int dGR;
  public rv fzK;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzK == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.dGR);
    if (this.fzK != null)
    {
      parama.bv(3, this.fzK.ns());
      this.fzK.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.dGR);
    if (this.fzK != null)
      j += a.a.a.a.bs(3, this.fzK.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.q
 * JD-Core Version:    0.6.2
 */