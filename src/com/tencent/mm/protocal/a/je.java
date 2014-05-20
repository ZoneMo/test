package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class je extends rs
{
  public String fFn;
  public int fGs;
  public int fLt;
  public LinkedList fLu = new LinkedList();
  public int fLv;
  public LinkedList fLw = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fGs);
    if (this.fFn != null)
      parama.A(3, this.fFn);
    parama.by(4, this.fLt);
    parama.c(5, 8, this.fLu);
    parama.by(6, this.fLv);
    parama.c(7, 8, this.fLw);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fGs);
    if (this.fFn != null)
      j += a.a.a.a.z(3, this.fFn);
    return j + a.a.a.a.br(4, this.fLt) + a.a.a.a.b(5, 8, this.fLu) + a.a.a.a.br(6, this.fLv) + a.a.a.a.b(7, 8, this.fLw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.je
 * JD-Core Version:    0.6.2
 */