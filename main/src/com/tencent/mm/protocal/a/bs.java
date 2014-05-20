package com.tencent.mm.protocal.a;

public final class bs extends rs
{
  public String fBC;
  public String fBD;
  public String fBL;
  public int fBX;
  public String fBY;
  public String fBZ;
  public String fCa;
  public int fCb;
  public rw fCc;
  public rv fCd;
  public int fCe;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBX);
    if (this.fBL != null)
      parama.A(3, this.fBL);
    if (this.fBY != null)
      parama.A(4, this.fBY);
    if (this.fBZ != null)
      parama.A(5, this.fBZ);
    if (this.fCa != null)
      parama.A(6, this.fCa);
    parama.by(7, this.fCb);
    if (this.fCc != null)
    {
      parama.bv(8, this.fCc.ns());
      this.fCc.a(parama);
    }
    if (this.fCd != null)
    {
      parama.bv(9, this.fCd.ns());
      this.fCd.a(parama);
    }
    parama.by(10, this.fCe);
    if (this.fBC != null)
      parama.A(11, this.fBC);
    if (this.fBD != null)
      parama.A(12, this.fBD);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBX);
    if (this.fBL != null)
      j += a.a.a.a.z(3, this.fBL);
    if (this.fBY != null)
      j += a.a.a.a.z(4, this.fBY);
    if (this.fBZ != null)
      j += a.a.a.a.z(5, this.fBZ);
    if (this.fCa != null)
      j += a.a.a.a.z(6, this.fCa);
    int k = j + a.a.a.a.br(7, this.fCb);
    if (this.fCc != null)
      k += a.a.a.a.bs(8, this.fCc.ns());
    if (this.fCd != null)
      k += a.a.a.a.bs(9, this.fCd.ns());
    int m = k + a.a.a.a.br(10, this.fCe);
    if (this.fBC != null)
      m += a.a.a.a.z(11, this.fBC);
    if (this.fBD != null)
      m += a.a.a.a.z(12, this.fBD);
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bs
 * JD-Core Version:    0.6.2
 */