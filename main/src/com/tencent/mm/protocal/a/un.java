package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class un extends rs
{
  public uk fVq;
  public String fzj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fVq == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVq != null)
    {
      parama.bv(2, this.fVq.ns());
      this.fVq.a(parama);
    }
    if (this.fzj != null)
      parama.A(3, this.fzj);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVq != null)
      i += a.a.a.a.bs(2, this.fVq.ns());
    if (this.fzj != null)
      i += a.a.a.a.z(3, this.fzj);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.un
 * JD-Core Version:    0.6.2
 */