package com.tencent.mm.protocal.a;

public final class cp extends rs
{
  public int fAL;
  public String fDC;
  public zi fDD;
  public int fzo;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fDC != null)
      parama.A(2, this.fDC);
    parama.by(3, this.fAL);
    parama.by(4, this.fzo);
    if (this.fDD != null)
    {
      parama.bv(5, this.fDD.ns());
      this.fDD.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fDC != null)
      i += a.a.a.a.z(2, this.fDC);
    int j = i + a.a.a.a.br(3, this.fAL) + a.a.a.a.br(4, this.fzo);
    if (this.fDD != null)
      j += a.a.a.a.bs(5, this.fDD.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.cp
 * JD-Core Version:    0.6.2
 */