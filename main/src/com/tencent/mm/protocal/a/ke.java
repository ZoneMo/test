package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ke extends rs
{
  public int fMa;
  public rv fMb;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fMb == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fMa);
    if (this.fMb != null)
    {
      parama.bv(3, this.fMb.ns());
      this.fMb.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fMa);
    if (this.fMb != null)
      j += a.a.a.a.bs(3, this.fMb.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ke
 * JD-Core Version:    0.6.2
 */