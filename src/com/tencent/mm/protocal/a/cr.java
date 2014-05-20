package com.tencent.mm.protocal.a;

public final class cr extends rs
{
  public int fDI;
  public String fDJ;
  public String fDK;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fDI);
    if (this.fDJ != null)
      parama.A(3, this.fDJ);
    if (this.fDK != null)
      parama.A(4, this.fDK);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fDI);
    if (this.fDJ != null)
      j += a.a.a.a.z(3, this.fDJ);
    if (this.fDK != null)
      j += a.a.a.a.z(4, this.fDK);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.cr
 * JD-Core Version:    0.6.2
 */