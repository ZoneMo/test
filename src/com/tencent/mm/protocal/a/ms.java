package com.tencent.mm.protocal.a;

public final class ms extends rs
{
  public int fBj;
  public String fNA;
  public String fNB;
  public int fNC;
  public String fNH;
  public int fNI;
  public int fNJ;
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
    if (this.fNH != null)
      parama.A(9, this.fNH);
    parama.by(10, this.fNI);
    parama.by(11, this.fNJ);
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
    int n = m + a.a.a.a.br(8, this.fNC);
    if (this.fNH != null)
      n += a.a.a.a.z(9, this.fNH);
    return n + a.a.a.a.br(10, this.fNI) + a.a.a.a.br(11, this.fNJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ms
 * JD-Core Version:    0.6.2
 */