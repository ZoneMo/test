package com.tencent.mm.protocal.a;

public final class tf extends rs
{
  public int fUC;
  public String fUD;
  public String fyR;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyR != null)
      parama.A(2, this.fyR);
    parama.by(3, this.fUC);
    if (this.fUD != null)
      parama.A(4, this.fUD);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyR != null)
      i += a.a.a.a.z(2, this.fyR);
    int j = i + a.a.a.a.br(3, this.fUC);
    if (this.fUD != null)
      j += a.a.a.a.z(4, this.fUD);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tf
 * JD-Core Version:    0.6.2
 */