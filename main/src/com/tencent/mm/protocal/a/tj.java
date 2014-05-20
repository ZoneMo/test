package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class tj extends rs
{
  public int fJY;
  public LinkedList fJZ = new LinkedList();
  public String fyR;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyR != null)
      parama.A(2, this.fyR);
    parama.by(3, this.fJY);
    parama.c(4, 8, this.fJZ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyR != null)
      i += a.a.a.a.z(2, this.fyR);
    return i + a.a.a.a.br(3, this.fJY) + a.a.a.a.b(4, 8, this.fJZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tj
 * JD-Core Version:    0.6.2
 */