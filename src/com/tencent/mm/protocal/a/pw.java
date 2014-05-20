package com.tencent.mm.protocal.a;

public final class pw extends rs
{
  public int fAE;
  public int fMr;
  public String fSj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fMr);
    parama.by(3, this.fAE);
    if (this.fSj != null)
      parama.A(4, this.fSj);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fMr) + a.a.a.a.br(3, this.fAE);
    if (this.fSj != null)
      j += a.a.a.a.z(4, this.fSj);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pw
 * JD-Core Version:    0.6.2
 */