package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class vw extends rs
{
  public vu fXn;
  public vt fXo;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fXn == null) || (this.fXo == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fXn != null)
    {
      parama.bv(2, this.fXn.ns());
      this.fXn.a(parama);
    }
    if (this.fXo != null)
    {
      parama.bv(3, this.fXo.ns());
      this.fXo.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fXn != null)
      i += a.a.a.a.bs(2, this.fXn.ns());
    if (this.fXo != null)
      i += a.a.a.a.bs(3, this.fXo.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vw
 * JD-Core Version:    0.6.2
 */