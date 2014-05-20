package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class rb extends rs
{
  public re fTx;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTx == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fTx != null)
    {
      parama.bv(2, this.fTx.ns());
      this.fTx.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fTx != null)
      i += a.a.a.a.bs(2, this.fTx.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rb
 * JD-Core Version:    0.6.2
 */