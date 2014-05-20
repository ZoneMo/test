package com.tencent.mm.protocal.a;

public final class vq extends rs
{
  public String fBM;
  public String fVY;
  public long fVZ;
  public long fWa;
  public int fWb;
  public int fzV;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVY != null)
      parama.A(2, this.fVY);
    if (this.fBM != null)
      parama.A(3, this.fBM);
    parama.k(4, this.fVZ);
    parama.by(5, this.fzV);
    parama.k(6, this.fWa);
    parama.by(7, this.fWb);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVY != null)
      i += a.a.a.a.z(2, this.fVY);
    if (this.fBM != null)
      i += a.a.a.a.z(3, this.fBM);
    return i + a.a.a.a.i(4, this.fVZ) + a.a.a.a.br(5, this.fzV) + a.a.a.a.i(6, this.fWa) + a.a.a.a.br(7, this.fWb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vq
 * JD-Core Version:    0.6.2
 */