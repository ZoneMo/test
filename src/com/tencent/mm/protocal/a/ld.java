package com.tencent.mm.protocal.a;

public final class ld extends rs
{
  public String fDC;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fDC != null)
      parama.A(2, this.fDC);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fDC != null)
      i += a.a.a.a.z(2, this.fDC);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ld
 * JD-Core Version:    0.6.2
 */