package com.tencent.mm.protocal.a;

public final class yz extends rs
{
  public String fBY;
  public int fBj;
  public rw fCc;
  public rv fCd;
  public rw fMM;
  public rw fQn;
  public int fUJ;
  public String fZn;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBj);
    if (this.fZn != null)
      parama.A(3, this.fZn);
    if (this.fBY != null)
      parama.A(4, this.fBY);
    if (this.fMM != null)
    {
      parama.bv(5, this.fMM.ns());
      this.fMM.a(parama);
    }
    if (this.fQn != null)
    {
      parama.bv(6, this.fQn.ns());
      this.fQn.a(parama);
    }
    if (this.fCc != null)
    {
      parama.bv(7, this.fCc.ns());
      this.fCc.a(parama);
    }
    if (this.fCd != null)
    {
      parama.bv(8, this.fCd.ns());
      this.fCd.a(parama);
    }
    parama.by(9, this.fUJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBj);
    if (this.fZn != null)
      j += a.a.a.a.z(3, this.fZn);
    if (this.fBY != null)
      j += a.a.a.a.z(4, this.fBY);
    if (this.fMM != null)
      j += a.a.a.a.bs(5, this.fMM.ns());
    if (this.fQn != null)
      j += a.a.a.a.bs(6, this.fQn.ns());
    if (this.fCc != null)
      j += a.a.a.a.bs(7, this.fCc.ns());
    if (this.fCd != null)
      j += a.a.a.a.bs(8, this.fCd.ns());
    return j + a.a.a.a.br(9, this.fUJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yz
 * JD-Core Version:    0.6.2
 */