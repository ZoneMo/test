package com.tencent.mm.protocal.a;

public final class fp extends rs
{
  public int fGs;
  public String fGt;
  public String fGu;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fGs);
    if (this.fGt != null)
      parama.A(3, this.fGt);
    if (this.fGu != null)
      parama.A(4, this.fGu);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fGs);
    if (this.fGt != null)
      j += a.a.a.a.z(3, this.fGt);
    if (this.fGu != null)
      j += a.a.a.a.z(4, this.fGu);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fp
 * JD-Core Version:    0.6.2
 */