package com.tencent.mm.protocal.a;

public final class bk extends rs
{
  public int fBj;
  public String fBk;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBj);
    if (this.fBk != null)
      parama.A(3, this.fBk);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBj);
    if (this.fBk != null)
      j += a.a.a.a.z(3, this.fBk);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bk
 * JD-Core Version:    0.6.2
 */