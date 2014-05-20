package com.tencent.mm.protocal.a;

public final class jm extends rs
{
  public String URL;
  public int fAE;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.URL != null)
      parama.A(2, this.URL);
    parama.by(3, this.fAE);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.URL != null)
      i += a.a.a.a.z(2, this.URL);
    return i + a.a.a.a.br(3, this.fAE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jm
 * JD-Core Version:    0.6.2
 */