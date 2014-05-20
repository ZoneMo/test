package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class yj extends rs
{
  public rv fAJ;
  public String fDC;
  public zi fDD;
  public yi fDF;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fDD == null) || (this.fDF == null) || (this.fAJ == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fDC != null)
      parama.A(2, this.fDC);
    if (this.fDD != null)
    {
      parama.bv(3, this.fDD.ns());
      this.fDD.a(parama);
    }
    if (this.fDF != null)
    {
      parama.bv(4, this.fDF.ns());
      this.fDF.a(parama);
    }
    if (this.fAJ != null)
    {
      parama.bv(5, this.fAJ.ns());
      this.fAJ.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fDC != null)
      i += a.a.a.a.z(2, this.fDC);
    if (this.fDD != null)
      i += a.a.a.a.bs(3, this.fDD.ns());
    if (this.fDF != null)
      i += a.a.a.a.bs(4, this.fDF.ns());
    if (this.fAJ != null)
      i += a.a.a.a.bs(5, this.fAJ.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yj
 * JD-Core Version:    0.6.2
 */