package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ja extends rs
{
  public String fCX;
  public String fLf;
  public n fLg;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fLg == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fLf != null)
      parama.A(2, this.fLf);
    if (this.fCX != null)
      parama.A(3, this.fCX);
    if (this.fLg != null)
    {
      parama.bv(4, this.fLg.ns());
      this.fLg.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fLf != null)
      i += a.a.a.a.z(2, this.fLf);
    if (this.fCX != null)
      i += a.a.a.a.z(3, this.fCX);
    if (this.fLg != null)
      i += a.a.a.a.bs(4, this.fLg.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ja
 * JD-Core Version:    0.6.2
 */