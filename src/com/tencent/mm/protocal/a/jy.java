package com.tencent.mm.protocal.a;

public final class jy extends rs
{
  public String fFB;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fFB != null)
      parama.A(2, this.fFB);
    parama.by(3, this.fyJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fFB != null)
      i += a.a.a.a.z(2, this.fFB);
    return i + a.a.a.a.br(3, this.fyJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jy
 * JD-Core Version:    0.6.2
 */