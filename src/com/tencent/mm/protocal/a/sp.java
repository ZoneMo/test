package com.tencent.mm.protocal.a;

public final class sp extends rs
{
  public String dGS;
  public String eBo;
  public int fIJ;
  public int fQK;
  public String fUt;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.dGS != null)
      parama.A(3, this.dGS);
    parama.by(4, this.fQK);
    parama.by(5, this.fIJ);
    if (this.fUt != null)
      parama.A(6, this.fUt);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.dGS != null)
      i += a.a.a.a.z(3, this.dGS);
    int j = i + a.a.a.a.br(4, this.fQK) + a.a.a.a.br(5, this.fIJ);
    if (this.fUt != null)
      j += a.a.a.a.z(6, this.fUt);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sp
 * JD-Core Version:    0.6.2
 */