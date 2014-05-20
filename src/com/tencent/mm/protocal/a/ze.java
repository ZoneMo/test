package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ze extends rs
{
  public int fBl;
  public String fMl;
  public int fZu;
  public LinkedList fZv = new LinkedList();
  public int fZw;
  public LinkedList fZx = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBl);
    parama.by(3, this.fZu);
    parama.c(4, 8, this.fZv);
    if (this.fMl != null)
      parama.A(5, this.fMl);
    parama.by(6, this.fZw);
    parama.b(7, this.fZx);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBl) + a.a.a.a.br(3, this.fZu) + a.a.a.a.b(4, 8, this.fZv);
    if (this.fMl != null)
      j += a.a.a.a.z(5, this.fMl);
    return j + a.a.a.a.br(6, this.fZw) + a.a.a.a.a(7, this.fZx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ze
 * JD-Core Version:    0.6.2
 */