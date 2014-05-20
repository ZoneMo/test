package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class to extends rs
{
  public rv fAz;
  public int fUH;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAz == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAz != null)
    {
      parama.bv(2, this.fAz.ns());
      this.fAz.a(parama);
    }
    parama.by(3, this.fUH);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAz != null)
      i += a.a.a.a.bs(2, this.fAz.ns());
    return i + a.a.a.a.br(3, this.fUH);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.to
 * JD-Core Version:    0.6.2
 */