package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class hz extends com.tencent.mm.am.a
  implements uh
{
  public int fAY;
  public int fKm;
  public int fKn;
  public int fKo;
  public LinkedList fKp = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAY);
    parama.by(2, this.fKm);
    parama.by(3, this.fKn);
    parama.by(4, this.fKo);
    parama.c(5, 8, this.fKp);
  }

  public final int getRet()
  {
    return this.fAY;
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fAY) + a.a.a.a.br(2, this.fKm) + a.a.a.a.br(3, this.fKn) + a.a.a.a.br(4, this.fKo) + a.a.a.a.b(5, 8, this.fKp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.hz
 * JD-Core Version:    0.6.2
 */