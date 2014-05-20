package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class pl extends rs
{
  public String fRT;
  public df fRU;
  public df fRV;
  public int fzu;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fRU == null) || (this.fRV == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fRT != null)
      parama.A(2, this.fRT);
    if (this.fRU != null)
    {
      parama.bv(3, this.fRU.ns());
      this.fRU.a(parama);
    }
    if (this.fRV != null)
    {
      parama.bv(4, this.fRV.ns());
      this.fRV.a(parama);
    }
    parama.by(5, this.fzu);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fRT != null)
      i += a.a.a.a.z(2, this.fRT);
    if (this.fRU != null)
      i += a.a.a.a.bs(3, this.fRU.ns());
    if (this.fRV != null)
      i += a.a.a.a.bs(4, this.fRV.ns());
    return i + a.a.a.a.br(5, this.fzu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pl
 * JD-Core Version:    0.6.2
 */