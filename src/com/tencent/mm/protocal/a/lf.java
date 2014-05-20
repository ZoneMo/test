package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class lf extends rs
{
  public String eBo;
  public rv fCj;
  public rv fJQ;
  public String fMO;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fCj == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fCj != null)
    {
      parama.bv(2, this.fCj.ns());
      this.fCj.a(parama);
    }
    if (this.eBo != null)
      parama.A(3, this.eBo);
    parama.by(4, this.fyJ);
    if (this.fMO != null)
      parama.A(5, this.fMO);
    if (this.fJQ != null)
    {
      parama.bv(6, this.fJQ.ns());
      this.fJQ.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fCj != null)
      i += a.a.a.a.bs(2, this.fCj.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(3, this.eBo);
    int j = i + a.a.a.a.br(4, this.fyJ);
    if (this.fMO != null)
      j += a.a.a.a.z(5, this.fMO);
    if (this.fJQ != null)
      j += a.a.a.a.bs(6, this.fJQ.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lf
 * JD-Core Version:    0.6.2
 */