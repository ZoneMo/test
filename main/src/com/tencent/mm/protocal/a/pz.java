package com.tencent.mm.protocal.a;

public final class pz extends rs
{
  public String fSy;
  public String fSz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fSy != null)
      parama.A(2, this.fSy);
    if (this.fSz != null)
      parama.A(3, this.fSz);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fSy != null)
      i += a.a.a.a.z(2, this.fSy);
    if (this.fSz != null)
      i += a.a.a.a.z(3, this.fSz);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pz
 * JD-Core Version:    0.6.2
 */