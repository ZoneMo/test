package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class sn extends rs
{
  public u fUr;
  public String fUs;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fUr == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fUr != null)
    {
      parama.bv(2, this.fUr.ns());
      this.fUr.a(parama);
    }
    if (this.fUs != null)
      parama.A(3, this.fUs);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fUr != null)
      i += a.a.a.a.bs(2, this.fUr.ns());
    if (this.fUs != null)
      i += a.a.a.a.z(3, this.fUs);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sn
 * JD-Core Version:    0.6.2
 */