package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class oh extends rs
{
  public LinkedList fBf = new LinkedList();
  public int fPt;
  public LinkedList fPu = new LinkedList();
  public int fPv;
  public int fzf;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fzf);
    parama.by(3, this.fPt);
    parama.c(4, 8, this.fPu);
    parama.by(5, this.fPv);
    parama.c(6, 8, this.fBf);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fzf) + a.a.a.a.br(3, this.fPt) + a.a.a.a.b(4, 8, this.fPu) + a.a.a.a.br(5, this.fPv) + a.a.a.a.b(6, 8, this.fBf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.oh
 * JD-Core Version:    0.6.2
 */