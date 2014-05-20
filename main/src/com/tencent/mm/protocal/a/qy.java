package com.tencent.mm.protocal.a;

public final class qy extends rs
{
  public int fBj;
  public String fNA;
  public String fNB;
  public int fNC;
  public float fNx;
  public float fNy;
  public int fNz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBj);
    parama.c(3, this.fNx);
    parama.c(4, this.fNy);
    parama.by(5, this.fNz);
    if (this.fNA != null)
      parama.A(6, this.fNA);
    if (this.fNB != null)
      parama.A(7, this.fNB);
    parama.by(8, this.fNC);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBj);
    int k = j + a.a.a.a.oK(3);
    int m = k + a.a.a.a.oK(4) + a.a.a.a.br(5, this.fNz);
    if (this.fNA != null)
      m += a.a.a.a.z(6, this.fNA);
    if (this.fNB != null)
      m += a.a.a.a.z(7, this.fNB);
    return m + a.a.a.a.br(8, this.fNC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qy
 * JD-Core Version:    0.6.2
 */