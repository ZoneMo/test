package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ba extends rs
{
  public int fAC;
  public int fBc;
  public LinkedList fBd = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBc);
    parama.by(3, this.fAC);
    parama.c(4, 8, this.fBd);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fBc) + a.a.a.a.br(3, this.fAC) + a.a.a.a.b(4, 8, this.fBd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ba
 * JD-Core Version:    0.6.2
 */