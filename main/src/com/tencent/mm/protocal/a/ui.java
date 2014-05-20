package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ui extends com.tencent.mm.am.a
{
  public int fCV;
  public String fCX;
  public n fLg;
  public LinkedList fVc = new LinkedList();
  public fn fVd;
  public LinkedList fVe = new LinkedList();
  public int fVf;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fCV);
    parama.c(2, 8, this.fVc);
    if (this.fVd != null)
    {
      parama.bv(3, this.fVd.ns());
      this.fVd.a(parama);
    }
    if (this.fLg != null)
    {
      parama.bv(4, this.fLg.ns());
      this.fLg.a(parama);
    }
    parama.c(5, 8, this.fVe);
    parama.by(6, this.fVf);
    if (this.fCX != null)
      parama.A(7, this.fCX);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fCV) + a.a.a.a.b(2, 8, this.fVc);
    if (this.fVd != null)
      i += a.a.a.a.bs(3, this.fVd.ns());
    if (this.fLg != null)
      i += a.a.a.a.bs(4, this.fLg.ns());
    int j = i + a.a.a.a.b(5, 8, this.fVe) + a.a.a.a.br(6, this.fVf);
    if (this.fCX != null)
      j += a.a.a.a.z(7, this.fCX);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ui
 * JD-Core Version:    0.6.2
 */