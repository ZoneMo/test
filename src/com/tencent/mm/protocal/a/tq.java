package com.tencent.mm.protocal.a;

public final class tq extends rs
{
  public int fAL;
  public int fEd;
  public int fUK;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fUK);
    parama.by(3, this.fEd);
    parama.by(4, this.fAL);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    return i + a.a.a.a.br(2, this.fUK) + a.a.a.a.br(3, this.fEd) + a.a.a.a.br(4, this.fAL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tq
 * JD-Core Version:    0.6.2
 */