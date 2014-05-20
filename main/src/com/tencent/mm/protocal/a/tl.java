package com.tencent.mm.protocal.a;

public final class tl extends rs
{
  public String fFm;
  public String fQS;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fQS != null)
      parama.A(2, this.fQS);
    if (this.fFm != null)
      parama.A(3, this.fFm);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fQS != null)
      i += a.a.a.a.z(2, this.fQS);
    if (this.fFm != null)
      i += a.a.a.a.z(3, this.fFm);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tl
 * JD-Core Version:    0.6.2
 */