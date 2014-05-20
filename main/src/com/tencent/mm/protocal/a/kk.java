package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class kk extends rs
{
  public rv fBE;
  public String fBI;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBE == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fBI != null)
      parama.A(2, this.fBI);
    if (this.fBE != null)
    {
      parama.bv(3, this.fBE.ns());
      this.fBE.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fBI != null)
      i += a.a.a.a.z(2, this.fBI);
    if (this.fBE != null)
      i += a.a.a.a.bs(3, this.fBE.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.kk
 * JD-Core Version:    0.6.2
 */