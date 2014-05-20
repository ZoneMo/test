package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class st extends rs
{
  public int fUw;
  public LinkedList fUx = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fUw);
    parama.b(3, this.fUx);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fUw) + a.a.a.a.a(3, this.fUx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.st
 * JD-Core Version:    0.6.2
 */