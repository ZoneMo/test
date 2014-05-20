package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class sf extends rs
{
  public qg fUj;
  public float fUk;
  public float fUl;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fUj == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fUj != null)
    {
      parama.bv(2, this.fUj.ns());
      this.fUj.a(parama);
    }
    parama.by(3, this.fyJ);
    parama.c(4, this.fUk);
    parama.c(5, this.fUl);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fUj != null)
      i += a.a.a.a.bs(2, this.fUj.ns());
    int j = i + a.a.a.a.br(3, this.fyJ);
    int k = j + a.a.a.a.oK(4);
    return k + a.a.a.a.oK(5);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sf
 * JD-Core Version:    0.6.2
 */