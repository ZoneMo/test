package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class no extends com.tencent.mm.am.a
{
  public rw fEL;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEL == null)
      throw new b("Not all required fields were included");
    if (this.fEL != null)
    {
      parama.bv(1, this.fEL.ns());
      this.fEL.a(parama);
    }
  }

  public final int ns()
  {
    rw localrw = this.fEL;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEL.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.no
 * JD-Core Version:    0.6.2
 */