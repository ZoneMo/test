package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class lc extends rs
{
  public rv fBE;
  public rw fEI;
  public rw fML;
  public rw fMM;
  public rv fMN;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fEI == null) || (this.fML == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fEI != null)
    {
      parama.bv(2, this.fEI.ns());
      this.fEI.a(parama);
    }
    if (this.fML != null)
    {
      parama.bv(3, this.fML.ns());
      this.fML.a(parama);
    }
    if (this.fMM != null)
    {
      parama.bv(4, this.fMM.ns());
      this.fMM.a(parama);
    }
    if (this.fBE != null)
    {
      parama.bv(5, this.fBE.ns());
      this.fBE.a(parama);
    }
    if (this.fMN != null)
    {
      parama.bv(6, this.fMN.ns());
      this.fMN.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fEI != null)
      i += a.a.a.a.bs(2, this.fEI.ns());
    if (this.fML != null)
      i += a.a.a.a.bs(3, this.fML.ns());
    if (this.fMM != null)
      i += a.a.a.a.bs(4, this.fMM.ns());
    if (this.fBE != null)
      i += a.a.a.a.bs(5, this.fBE.ns());
    if (this.fMN != null)
      i += a.a.a.a.bs(6, this.fMN.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lc
 * JD-Core Version:    0.6.2
 */