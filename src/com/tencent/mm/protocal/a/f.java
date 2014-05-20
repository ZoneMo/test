package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class f extends rs
{
  public int fzc;
  public LinkedList fzd = new LinkedList();
  public rw fze;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fze == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fzc);
    parama.c(3, 8, this.fzd);
    if (this.fze != null)
    {
      parama.bv(4, this.fze.ns());
      this.fze.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fzc) + a.a.a.a.b(3, 8, this.fzd);
    if (this.fze != null)
      j += a.a.a.a.bs(4, this.fze.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.f
 * JD-Core Version:    0.6.2
 */