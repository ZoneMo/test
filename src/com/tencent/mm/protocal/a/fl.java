package com.tencent.mm.protocal.a;

public final class fl extends rs
{
  public int dGR;
  public long eBm;
  public String eBo;
  public String fGm;
  public int fGn;
  public String fGo;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    parama.by(3, this.fyJ);
    parama.by(4, this.dGR);
    if (this.fGm != null)
      parama.A(5, this.fGm);
    parama.by(6, this.fGn);
    parama.k(7, this.eBm);
    if (this.fGo != null)
      parama.A(8, this.fGo);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    int j = i + a.a.a.a.br(3, this.fyJ) + a.a.a.a.br(4, this.dGR);
    if (this.fGm != null)
      j += a.a.a.a.z(5, this.fGm);
    int k = j + a.a.a.a.br(6, this.fGn) + a.a.a.a.i(7, this.eBm);
    if (this.fGo != null)
      k += a.a.a.a.z(8, this.fGo);
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fl
 * JD-Core Version:    0.6.2
 */