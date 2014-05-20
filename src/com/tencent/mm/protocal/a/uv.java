package com.tencent.mm.protocal.a;

public final class uv extends com.tencent.mm.am.a
{
  public int fGs;
  public rv fSe;
  public long fVl;

  public final void a(a.a.a.c.a parama)
  {
    parama.k(1, this.fVl);
    parama.by(2, this.fGs);
    if (this.fSe != null)
    {
      parama.bv(3, this.fSe.ns());
      this.fSe.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.i(1, this.fVl) + a.a.a.a.br(2, this.fGs);
    if (this.fSe != null)
      i += a.a.a.a.bs(3, this.fSe.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.uv
 * JD-Core Version:    0.6.2
 */