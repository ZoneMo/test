package com.tencent.mm.protocal.a;

public final class ii extends rs
{
  public int fAm;
  public String fKD;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fKD != null)
      parama.A(2, this.fKD);
    parama.by(3, this.fAm);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fKD != null)
      i += a.a.a.a.z(2, this.fKD);
    return i + a.a.a.a.br(3, this.fAm);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ii
 * JD-Core Version:    0.6.2
 */