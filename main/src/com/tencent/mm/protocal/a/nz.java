package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class nz extends com.tencent.mm.am.a
{
  public rw fze;
  public int fzr;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fze == null)
      throw new b("Not all required fields were included");
    if (this.fze != null)
    {
      parama.bv(1, this.fze.ns());
      this.fze.a(parama);
    }
    parama.by(2, this.fzr);
  }

  public final int ns()
  {
    rw localrw = this.fze;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fze.ns());
    return i + a.a.a.a.br(2, this.fzr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nz
 * JD-Core Version:    0.6.2
 */