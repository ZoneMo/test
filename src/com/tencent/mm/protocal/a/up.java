package com.tencent.mm.protocal.a;

public final class up extends rs
{
  public int dGR;
  public int fAL;
  public int fEd;
  public String fVs;
  public int fVt;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fEd);
    parama.by(3, this.fAL);
    if (this.fVs != null)
      parama.A(4, this.fVs);
    parama.by(5, this.dGR);
    parama.by(6, this.fVt);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fEd) + a.a.a.a.br(3, this.fAL);
    if (this.fVs != null)
      j += a.a.a.a.z(4, this.fVs);
    return j + a.a.a.a.br(5, this.dGR) + a.a.a.a.br(6, this.fVt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.up
 * JD-Core Version:    0.6.2
 */