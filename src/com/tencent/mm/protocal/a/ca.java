package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ca extends rs
{
  public int fCV;
  public LinkedList fCW = new LinkedList();
  public String fCX;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fCV);
    parama.c(3, 8, this.fCW);
    if (this.fCX != null)
      parama.A(4, this.fCX);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fCV) + a.a.a.a.b(3, 8, this.fCW);
    if (this.fCX != null)
      j += a.a.a.a.z(4, this.fCX);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ca
 * JD-Core Version:    0.6.2
 */