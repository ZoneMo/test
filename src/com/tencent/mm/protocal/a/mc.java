package com.tencent.mm.protocal.a;

public final class mc extends rs
{
  public String fNi;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fNi != null)
      parama.A(2, this.fNi);
    parama.by(3, this.fyJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fNi != null)
      i += a.a.a.a.z(2, this.fNi);
    return i + a.a.a.a.br(3, this.fyJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.mc
 * JD-Core Version:    0.6.2
 */