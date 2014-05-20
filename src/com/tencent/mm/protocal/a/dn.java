package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class dn extends rs
{
  public String fEJ;
  public int fzc;
  public LinkedList fzd = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fzc);
    parama.c(3, 8, this.fzd);
    if (this.fEJ != null)
      parama.A(4, this.fEJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fzc) + a.a.a.a.b(3, 8, this.fzd);
    if (this.fEJ != null)
      j += a.a.a.a.z(4, this.fEJ);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dn
 * JD-Core Version:    0.6.2
 */