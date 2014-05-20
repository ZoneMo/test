package com.tencent.mm.protocal.a;

public final class ma extends rs
{
  public String cqr;
  public String fCA;
  public String fNe;
  public String fNf;
  public String fNg;
  public String fyI;
  public String fyR;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyR != null)
      parama.A(2, this.fyR);
    if (this.fyI != null)
      parama.A(3, this.fyI);
    if (this.fCA != null)
      parama.A(4, this.fCA);
    if (this.cqr != null)
      parama.A(5, this.cqr);
    if (this.fNe != null)
      parama.A(6, this.fNe);
    if (this.fNf != null)
      parama.A(7, this.fNf);
    if (this.fNg != null)
      parama.A(8, this.fNg);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyR != null)
      i += a.a.a.a.z(2, this.fyR);
    if (this.fyI != null)
      i += a.a.a.a.z(3, this.fyI);
    if (this.fCA != null)
      i += a.a.a.a.z(4, this.fCA);
    if (this.cqr != null)
      i += a.a.a.a.z(5, this.cqr);
    if (this.fNe != null)
      i += a.a.a.a.z(6, this.fNe);
    if (this.fNf != null)
      i += a.a.a.a.z(7, this.fNf);
    if (this.fNg != null)
      i += a.a.a.a.z(8, this.fNg);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ma
 * JD-Core Version:    0.6.2
 */