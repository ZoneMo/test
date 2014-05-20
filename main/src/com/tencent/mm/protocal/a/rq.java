package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class rq extends rs
{
  public int dGR;
  public String fGl;
  public int fQu;
  public yv fTT;
  public xd fTU;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTT == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fGl != null)
      parama.A(2, this.fGl);
    parama.by(3, this.dGR);
    if (this.fTT != null)
    {
      parama.bv(4, this.fTT.ns());
      this.fTT.a(parama);
    }
    parama.by(5, this.fQu);
    if (this.fTU != null)
    {
      parama.bv(6, this.fTU.ns());
      this.fTU.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fGl != null)
      i += a.a.a.a.z(2, this.fGl);
    int j = i + a.a.a.a.br(3, this.dGR);
    if (this.fTT != null)
      j += a.a.a.a.bs(4, this.fTT.ns());
    int k = j + a.a.a.a.br(5, this.fQu);
    if (this.fTU != null)
      k += a.a.a.a.bs(6, this.fTU.ns());
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rq
 * JD-Core Version:    0.6.2
 */