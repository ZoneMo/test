package com.tencent.mm.protocal.a;

public final class bq extends rs
{
  public String eBo;
  public String fBA;
  public int fBB;
  public String fBC;
  public String fBD;
  public rv fBE;
  public String fBF;
  public int fBG;
  public int fBH;
  public String fBI;
  public int fBl;
  public String fBw;
  public String fBx;
  public int fBy;
  public String fBz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fBw != null)
      parama.A(3, this.fBw);
    parama.by(4, this.fBl);
    if (this.fBx != null)
      parama.A(5, this.fBx);
    parama.by(6, this.fBy);
    if (this.fBz != null)
      parama.A(7, this.fBz);
    if (this.fBA != null)
      parama.A(8, this.fBA);
    parama.by(9, this.fBB);
    if (this.fBC != null)
      parama.A(10, this.fBC);
    if (this.fBD != null)
      parama.A(11, this.fBD);
    if (this.fBE != null)
    {
      parama.bv(12, this.fBE.ns());
      this.fBE.a(parama);
    }
    if (this.fBF != null)
      parama.A(13, this.fBF);
    parama.by(14, this.fBG);
    parama.by(15, this.fBH);
    if (this.fBI != null)
      parama.A(16, this.fBI);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fBw != null)
      i += a.a.a.a.z(3, this.fBw);
    int j = i + a.a.a.a.br(4, this.fBl);
    if (this.fBx != null)
      j += a.a.a.a.z(5, this.fBx);
    int k = j + a.a.a.a.br(6, this.fBy);
    if (this.fBz != null)
      k += a.a.a.a.z(7, this.fBz);
    if (this.fBA != null)
      k += a.a.a.a.z(8, this.fBA);
    int m = k + a.a.a.a.br(9, this.fBB);
    if (this.fBC != null)
      m += a.a.a.a.z(10, this.fBC);
    if (this.fBD != null)
      m += a.a.a.a.z(11, this.fBD);
    if (this.fBE != null)
      m += a.a.a.a.bs(12, this.fBE.ns());
    if (this.fBF != null)
      m += a.a.a.a.z(13, this.fBF);
    int n = m + a.a.a.a.br(14, this.fBG) + a.a.a.a.br(15, this.fBH);
    if (this.fBI != null)
      n += a.a.a.a.z(16, this.fBI);
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bq
 * JD-Core Version:    0.6.2
 */