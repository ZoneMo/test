package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class pd extends com.tencent.mm.am.a
{
  public int fIw;
  public rv fIx;
  public String fQw;
  public cy fRx;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fRx == null) || (this.fIx == null))
      throw new b("Not all required fields were included");
    if (this.fRx != null)
    {
      parama.bv(1, this.fRx.ns());
      this.fRx.a(parama);
    }
    parama.by(2, this.fIw);
    if (this.fIx != null)
    {
      parama.bv(3, this.fIx.ns());
      this.fIx.a(parama);
    }
    parama.by(4, this.fyJ);
    if (this.fQw != null)
      parama.A(5, this.fQw);
  }

  public final int ns()
  {
    cy localcy = this.fRx;
    int i = 0;
    if (localcy != null)
      i = 0 + a.a.a.a.bs(1, this.fRx.ns());
    int j = i + a.a.a.a.br(2, this.fIw);
    if (this.fIx != null)
      j += a.a.a.a.bs(3, this.fIx.ns());
    int k = j + a.a.a.a.br(4, this.fyJ);
    if (this.fQw != null)
      k += a.a.a.a.z(5, this.fQw);
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pd
 * JD-Core Version:    0.6.2
 */