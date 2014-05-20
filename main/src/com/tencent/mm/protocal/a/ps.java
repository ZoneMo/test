package com.tencent.mm.protocal.a;

public final class ps extends rs
{
  public String fDs;
  public String fDt;
  public String fDu;
  public String fDv;
  public String fJE;
  public String fNf;
  public String fSf;
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
    if (this.fSf != null)
      parama.A(3, this.fSf);
    if (this.fJE != null)
      parama.A(4, this.fJE);
    if (this.fDs != null)
      parama.A(5, this.fDs);
    if (this.fNf != null)
      parama.A(6, this.fNf);
    if (this.fDt != null)
      parama.A(7, this.fDt);
    if (this.fDu != null)
      parama.A(8, this.fDu);
    if (this.fDv != null)
      parama.A(9, this.fDv);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyE != null)
      i += a.a.a.a.z(2, this.fyE);
    if (this.fSf != null)
      i += a.a.a.a.z(3, this.fSf);
    if (this.fJE != null)
      i += a.a.a.a.z(4, this.fJE);
    if (this.fDs != null)
      i += a.a.a.a.z(5, this.fDs);
    if (this.fNf != null)
      i += a.a.a.a.z(6, this.fNf);
    if (this.fDt != null)
      i += a.a.a.a.z(7, this.fDt);
    if (this.fDu != null)
      i += a.a.a.a.z(8, this.fDu);
    if (this.fDv != null)
      i += a.a.a.a.z(9, this.fDv);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ps
 * JD-Core Version:    0.6.2
 */