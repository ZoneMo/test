package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ie extends rs
{
  public rv fBE;
  public int fKu;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBE == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fBE != null)
    {
      parama.bv(2, this.fBE.ns());
      this.fBE.a(parama);
    }
    parama.by(3, this.fKu);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fBE != null)
      i += a.a.a.a.bs(2, this.fBE.ns());
    return i + a.a.a.a.br(3, this.fKu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ie
 * JD-Core Version:    0.6.2
 */