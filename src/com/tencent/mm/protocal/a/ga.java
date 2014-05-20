package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ga extends com.tencent.mm.am.a
  implements uh
{
  public int fAY;
  public rv fIx;
  public cy fIy;
  public int fIz;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fIy == null) || (this.fIx == null))
      throw new b("Not all required fields were included");
    parama.by(1, this.fAY);
    if (this.fIy != null)
    {
      parama.bv(2, this.fIy.ns());
      this.fIy.a(parama);
    }
    if (this.fIx != null)
    {
      parama.bv(3, this.fIx.ns());
      this.fIx.a(parama);
    }
    parama.by(4, this.fIz);
  }

  public final cy aya()
  {
    return this.fIy;
  }

  public final rv ayb()
  {
    return this.fIx;
  }

  public final int ayc()
  {
    return this.fIz;
  }

  public final int getRet()
  {
    return this.fAY;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAY);
    if (this.fIy != null)
      i += a.a.a.a.bs(2, this.fIy.ns());
    if (this.fIx != null)
      i += a.a.a.a.bs(3, this.fIx.ns());
    return i + a.a.a.a.br(4, this.fIz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ga
 * JD-Core Version:    0.6.2
 */