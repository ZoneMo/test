package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class bc extends rs
{
  public int fAC;
  public LinkedList fBa = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fAC);
    parama.b(3, this.fBa);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fAC) + a.a.a.a.a(3, this.fBa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bc
 * JD-Core Version:    0.6.2
 */