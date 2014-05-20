package com.tencent.mm.protocal.a;

public final class hf extends rs
{
  public String fBs;
  public String fDs;
  public String fDt;
  public String fDu;
  public String fDv;
  public String fDw;
  public String fEv;
  public String fJC;
  public int fJD;
  public String fyE;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyE != null)
      parama.A(2, this.fyE);
    if (this.fDs != null)
      parama.A(3, this.fDs);
    if (this.fBs != null)
      parama.A(4, this.fBs);
    if (this.fDt != null)
      parama.A(5, this.fDt);
    if (this.fDu != null)
      parama.A(6, this.fDu);
    if (this.fDv != null)
      parama.A(7, this.fDv);
    if (this.fDw != null)
      parama.A(8, this.fDw);
    if (this.fJC != null)
      parama.A(9, this.fJC);
    parama.by(10, this.fJD);
    if (this.fEv != null)
      parama.A(11, this.fEv);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyE != null)
      i += a.a.a.a.z(2, this.fyE);
    if (this.fDs != null)
      i += a.a.a.a.z(3, this.fDs);
    if (this.fBs != null)
      i += a.a.a.a.z(4, this.fBs);
    if (this.fDt != null)
      i += a.a.a.a.z(5, this.fDt);
    if (this.fDu != null)
      i += a.a.a.a.z(6, this.fDu);
    if (this.fDv != null)
      i += a.a.a.a.z(7, this.fDv);
    if (this.fDw != null)
      i += a.a.a.a.z(8, this.fDw);
    if (this.fJC != null)
      i += a.a.a.a.z(9, this.fJC);
    int j = i + a.a.a.a.br(10, this.fJD);
    if (this.fEv != null)
      j += a.a.a.a.z(11, this.fEv);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.hf
 * JD-Core Version:    0.6.2
 */