package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class kq extends rs
{
  public int fMp;
  public int fMq;
  public int fMr;
  public int fMs;
  public LinkedList fMt = new LinkedList();
  public String fzH;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fMp);
    parama.by(3, this.fMq);
    parama.by(4, this.fMr);
    if (this.fzH != null)
      parama.A(5, this.fzH);
    parama.by(6, this.fMs);
    parama.c(7, 8, this.fMt);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fMp) + a.a.a.a.br(3, this.fMq) + a.a.a.a.br(4, this.fMr);
    if (this.fzH != null)
      j += a.a.a.a.z(5, this.fzH);
    return j + a.a.a.a.br(6, this.fMs) + a.a.a.a.b(7, 8, this.fMt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.kq
 * JD-Core Version:    0.6.2
 */