package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class jo extends rs
{
  public int dGR;
  public int fAC;
  public LinkedList fAD = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fAC);
    parama.c(3, 8, this.fAD);
    parama.by(4, this.dGR);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fAC) + a.a.a.a.b(3, 8, this.fAD) + a.a.a.a.br(4, this.dGR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jo
 * JD-Core Version:    0.6.2
 */