package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class hs extends rs
{
  public int fAC;
  public LinkedList fKb = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fAC);
    parama.c(3, 8, this.fKb);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fAC) + a.a.a.a.b(3, 8, this.fKb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.hs
 * JD-Core Version:    0.6.2
 */