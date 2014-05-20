package com.tencent.mm.protocal.a;

public final class zl extends rs
{
  public int fGe;
  public long fGf;
  public int fUN;
  public String fVg;
  public int fZH;
  public aac fZI;
  public aac fZJ;
  public String fZK;
  public int fZL;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fGe);
    parama.k(3, this.fGf);
    if (this.fVg != null)
      parama.A(4, this.fVg);
    parama.by(5, this.fZH);
    if (this.fZI != null)
    {
      parama.bv(6, this.fZI.ns());
      this.fZI.a(parama);
    }
    if (this.fZJ != null)
    {
      parama.bv(7, this.fZJ.ns());
      this.fZJ.a(parama);
    }
    parama.by(8, this.fUN);
    if (this.fZK != null)
      parama.A(9, this.fZK);
    parama.by(10, this.fZL);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fGe) + a.a.a.a.i(3, this.fGf);
    if (this.fVg != null)
      j += a.a.a.a.z(4, this.fVg);
    int k = j + a.a.a.a.br(5, this.fZH);
    if (this.fZI != null)
      k += a.a.a.a.bs(6, this.fZI.ns());
    if (this.fZJ != null)
      k += a.a.a.a.bs(7, this.fZJ.ns());
    int m = k + a.a.a.a.br(8, this.fUN);
    if (this.fZK != null)
      m += a.a.a.a.z(9, this.fZK);
    return m + a.a.a.a.br(10, this.fZL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zl
 * JD-Core Version:    0.6.2
 */