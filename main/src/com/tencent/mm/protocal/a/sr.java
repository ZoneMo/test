package com.tencent.mm.protocal.a;

public final class sr extends rs
{
  public String dGS;
  public String fUu;
  public int fUv;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fUu != null)
      parama.A(2, this.fUu);
    if (this.dGS != null)
      parama.A(3, this.dGS);
    parama.by(4, this.fUv);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fUu != null)
      i += a.a.a.a.z(2, this.fUu);
    if (this.dGS != null)
      i += a.a.a.a.z(3, this.dGS);
    return i + a.a.a.a.br(4, this.fUv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sr
 * JD-Core Version:    0.6.2
 */