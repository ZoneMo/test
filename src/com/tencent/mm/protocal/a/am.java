package com.tencent.mm.protocal.a;

public final class am extends rs
{
  public int fAR;
  public String fAi;
  public int fAj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAi != null)
      parama.A(2, this.fAi);
    parama.by(3, this.fAj);
    parama.by(4, this.fAR);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAi != null)
      i += a.a.a.a.z(2, this.fAi);
    return i + a.a.a.a.br(3, this.fAj) + a.a.a.a.br(4, this.fAR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.am
 * JD-Core Version:    0.6.2
 */