package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class lu extends com.tencent.mm.am.a
{
  public String eBo;
  public int fAX;
  public String fBk;
  public String fEl;
  public rw fNa;
  public int fNb;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fNa == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fAX);
    if (this.fNa != null)
    {
      parama.bv(2, this.fNa.ns());
      this.fNa.a(parama);
    }
    if (this.fBk != null)
      parama.A(3, this.fBk);
    if (this.fEl != null)
      parama.A(4, this.fEl);
    if (this.eBo != null)
      parama.A(5, this.eBo);
    parama.by(6, this.fNb);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAX);
    if (this.fNa != null)
      i += a.a.a.a.bs(2, this.fNa.ns());
    if (this.fBk != null)
      i += a.a.a.a.z(3, this.fBk);
    if (this.fEl != null)
      i += a.a.a.a.z(4, this.fEl);
    if (this.eBo != null)
      i += a.a.a.a.z(5, this.eBo);
    return i + a.a.a.a.br(6, this.fNb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lu
 * JD-Core Version:    0.6.2
 */