package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class dj extends rs
{
  public rw fEF;
  public int fzc;
  public LinkedList fzd = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEF == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fEF != null)
    {
      parama.bv(2, this.fEF.ns());
      this.fEF.a(parama);
    }
    parama.by(3, this.fzc);
    parama.c(4, 8, this.fzd);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fEF != null)
      i += a.a.a.a.bs(2, this.fEF.ns());
    return i + a.a.a.a.br(3, this.fzc) + a.a.a.a.b(4, 8, this.fzd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dj
 * JD-Core Version:    0.6.2
 */