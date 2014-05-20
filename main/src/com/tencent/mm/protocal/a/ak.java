package com.tencent.mm.protocal.a;

public final class ak extends rs
{
  public int dGR;
  public int fAF;
  public int fAP;
  public String fAi;
  public int fAj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAi != null)
      parama.A(2, this.fAi);
    parama.by(3, this.fAj);
    parama.by(4, this.fAP);
    parama.by(5, this.fAF);
    parama.by(6, this.dGR);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAi != null)
      i += a.a.a.a.z(2, this.fAi);
    return i + a.a.a.a.br(3, this.fAj) + a.a.a.a.br(4, this.fAP) + a.a.a.a.br(5, this.fAF) + a.a.a.a.br(6, this.dGR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ak
 * JD-Core Version:    0.6.2
 */