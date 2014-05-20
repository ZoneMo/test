package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class pi extends rs
{
  public int fBj;
  public int fRK;
  public LinkedList fRL = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBj);
    parama.by(3, this.fRK);
    parama.c(4, 8, this.fRL);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fBj) + a.a.a.a.br(3, this.fRK) + a.a.a.a.b(4, 8, this.fRL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pi
 * JD-Core Version:    0.6.2
 */