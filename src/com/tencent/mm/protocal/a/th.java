package com.tencent.mm.protocal.a;

public final class th extends rs
{
  public String fBL;
  public String fFm;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fBL != null)
      parama.A(2, this.fBL);
    if (this.fFm != null)
      parama.A(3, this.fFm);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fBL != null)
      i += a.a.a.a.z(2, this.fBL);
    if (this.fFm != null)
      i += a.a.a.a.z(3, this.fFm);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.th
 * JD-Core Version:    0.6.2
 */