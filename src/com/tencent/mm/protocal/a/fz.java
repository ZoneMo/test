package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class fz extends com.tencent.mm.am.a
{
  public int fIw;
  public rv fIx;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fIx == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fIw);
    if (this.fIx != null)
    {
      parama.bv(3, this.fIx.ns());
      this.fIx.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fIw);
    if (this.fIx != null)
      i += a.a.a.a.bs(3, this.fIx.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fz
 * JD-Core Version:    0.6.2
 */