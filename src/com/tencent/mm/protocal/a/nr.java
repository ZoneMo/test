package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class nr extends com.tencent.mm.am.a
{
  public int dGR;
  public String dGS;
  public int fOR;
  public rw fzt;
  public int fzy;
  public String fzz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzt == null)
      throw new b("Not all required fields were included");
    if (this.fzt != null)
    {
      parama.bv(1, this.fzt.ns());
      this.fzt.a(parama);
    }
    if (this.dGS != null)
      parama.A(2, this.dGS);
    parama.by(3, this.dGR);
    parama.by(4, this.fzy);
    parama.by(5, this.fOR);
    if (this.fzz != null)
      parama.A(6, this.fzz);
  }

  public final int ns()
  {
    rw localrw = this.fzt;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fzt.ns());
    if (this.dGS != null)
      i += a.a.a.a.z(2, this.dGS);
    int j = i + a.a.a.a.br(3, this.dGR) + a.a.a.a.br(4, this.fzy) + a.a.a.a.br(5, this.fOR);
    if (this.fzz != null)
      j += a.a.a.a.z(6, this.fzz);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nr
 * JD-Core Version:    0.6.2
 */