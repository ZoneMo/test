package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ya extends rs
{
  public String eBo;
  public int fBl;
  public String fBw;
  public LinkedList fNN = new LinkedList();
  public int fYq;
  public int fYr;
  public LinkedList fYs = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    parama.by(3, this.fBl);
    if (this.fBw != null)
      parama.A(4, this.fBw);
    parama.by(5, this.fYq);
    parama.c(6, 8, this.fNN);
    parama.by(7, this.fYr);
    parama.c(8, 8, this.fYs);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    int j = i + a.a.a.a.br(3, this.fBl);
    if (this.fBw != null)
      j += a.a.a.a.z(4, this.fBw);
    return j + a.a.a.a.br(5, this.fYq) + a.a.a.a.b(6, 8, this.fNN) + a.a.a.a.br(7, this.fYr) + a.a.a.a.b(8, 8, this.fYs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ya
 * JD-Core Version:    0.6.2
 */