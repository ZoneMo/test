package com.tencent.mm.protocal.a;

public final class bm extends rs
{
  public int fBl;
  public String fBm;
  public int fBn;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBl);
    if (this.fBm != null)
      parama.A(3, this.fBm);
    parama.by(4, this.fBn);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBl);
    if (this.fBm != null)
      j += a.a.a.a.z(3, this.fBm);
    return j + a.a.a.a.br(4, this.fBn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bm
 * JD-Core Version:    0.6.2
 */