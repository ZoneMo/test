package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class xw extends rs
{
  public String eBo;
  public rv fAJ;
  public int fAL;
  public int fEd;
  public int fLe;
  public String fYi;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAJ == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fAL);
    parama.by(3, this.fEd);
    parama.by(4, this.fLe);
    if (this.fAJ != null)
    {
      parama.bv(5, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    if (this.fYi != null)
      parama.A(6, this.fYi);
    if (this.eBo != null)
      parama.A(7, this.eBo);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fAL) + a.a.a.a.br(3, this.fEd) + a.a.a.a.br(4, this.fLe);
    if (this.fAJ != null)
      j += a.a.a.a.bs(5, this.fAJ.ns());
    if (this.fYi != null)
      j += a.a.a.a.z(6, this.fYi);
    if (this.eBo != null)
      j += a.a.a.a.z(7, this.eBo);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xw
 * JD-Core Version:    0.6.2
 */