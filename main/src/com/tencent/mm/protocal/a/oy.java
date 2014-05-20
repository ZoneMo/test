package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class oy extends rs
{
  public String eBo;
  public String fBF;
  public rv fRd;
  public rv fRe;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fRd == null) || (this.fRe == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fRd != null)
    {
      parama.bv(3, this.fRd.ns());
      this.fRd.a(parama);
    }
    if (this.fRe != null)
    {
      parama.bv(4, this.fRe.ns());
      this.fRe.a(parama);
    }
    if (this.fBF != null)
      parama.A(5, this.fBF);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fRd != null)
      i += a.a.a.a.bs(3, this.fRd.ns());
    if (this.fRe != null)
      i += a.a.a.a.bs(4, this.fRe.ns());
    if (this.fBF != null)
      i += a.a.a.a.z(5, this.fBF);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.oy
 * JD-Core Version:    0.6.2
 */