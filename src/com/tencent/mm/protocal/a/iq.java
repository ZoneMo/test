package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class iq extends rs
{
  public int fKN;
  public int fyJ;
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
    if (this.fzK != null)
    {
      parama.bv(2, this.fzK.ns());
      this.fzK.a(parama);
    }
    parama.by(3, this.fKN);
    parama.by(4, this.fyJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fzK != null)
      i += a.a.a.a.bs(2, this.fzK.ns());
    return i + a.a.a.a.br(3, this.fKN) + a.a.a.a.br(4, this.fyJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.iq
 * JD-Core Version:    0.6.2
 */