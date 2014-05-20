package com.tencent.mm.protocal.a;

public final class zp extends rs
{
  public int fGe;
  public long fGf;
  public int fUN;
  public String fVg;
  public aac fZI;
  public aac fZJ;
  public int fZQ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVg != null)
      parama.A(2, this.fVg);
    parama.by(3, this.fGe);
    parama.by(4, this.fZQ);
    if (this.fZI != null)
    {
      parama.bv(5, this.fZI.ns());
      this.fZI.a(parama);
    }
    if (this.fZJ != null)
    {
      parama.bv(6, this.fZJ.ns());
      this.fZJ.a(parama);
    }
    parama.k(7, this.fGf);
    parama.by(8, this.fUN);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVg != null)
      i += a.a.a.a.z(2, this.fVg);
    int j = i + a.a.a.a.br(3, this.fGe) + a.a.a.a.br(4, this.fZQ);
    if (this.fZI != null)
      j += a.a.a.a.bs(5, this.fZI.ns());
    if (this.fZJ != null)
      j += a.a.a.a.bs(6, this.fZJ.ns());
    return j + a.a.a.a.i(7, this.fGf) + a.a.a.a.br(8, this.fUN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zp
 * JD-Core Version:    0.6.2
 */