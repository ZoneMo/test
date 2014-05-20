package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class od extends com.tencent.mm.am.a
{
  public ed fPq;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fPq == null)
      throw new b("Not all required fields were included");
    if (this.fPq != null)
    {
      parama.bv(1, this.fPq.ns());
      this.fPq.a(parama);
    }
  }

  public final int ns()
  {
    ed localed = this.fPq;
    int i = 0;
    if (localed != null)
      i = 0 + a.a.a.a.bs(1, this.fPq.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.od
 * JD-Core Version:    0.6.2
 */