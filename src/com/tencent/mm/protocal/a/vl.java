package com.tencent.mm.protocal.a;

public final class vl extends rs
{
  public String fVY;
  public long fVZ;
  public long fWa;
  public int fWb;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVY != null)
      parama.A(2, this.fVY);
    parama.k(3, this.fVZ);
    parama.k(4, this.fWa);
    parama.by(5, this.fWb);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVY != null)
      i += a.a.a.a.z(2, this.fVY);
    return i + a.a.a.a.i(3, this.fVZ) + a.a.a.a.i(4, this.fWa) + a.a.a.a.br(5, this.fWb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vl
 * JD-Core Version:    0.6.2
 */