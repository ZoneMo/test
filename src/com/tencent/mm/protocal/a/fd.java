package com.tencent.mm.protocal.a;

public final class fd extends rs
{
  public String fGd;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fGd != null)
      parama.A(2, this.fGd);
    parama.by(3, this.fyJ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fGd != null)
      i += a.a.a.a.z(2, this.fGd);
    return i + a.a.a.a.br(3, this.fyJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fd
 * JD-Core Version:    0.6.2
 */