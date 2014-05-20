package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class zr extends rs
{
  public int fGe;
  public long fGf;
  public String fVg;
  public aaf fZY;
  public int fZZ;
  public String fzq;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fZY == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fVg != null)
      parama.A(2, this.fVg);
    parama.by(3, this.fGe);
    parama.k(4, this.fGf);
    if (this.fzq != null)
      parama.A(6, this.fzq);
    if (this.fZY != null)
    {
      parama.bv(8, this.fZY.ns());
      this.fZY.a(parama);
    }
    parama.by(9, this.fZZ);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fVg != null)
      i += a.a.a.a.z(2, this.fVg);
    int j = i + a.a.a.a.br(3, this.fGe) + a.a.a.a.i(4, this.fGf);
    if (this.fzq != null)
      j += a.a.a.a.z(6, this.fzq);
    if (this.fZY != null)
      j += a.a.a.a.bs(8, this.fZY.ns());
    return j + a.a.a.a.br(9, this.fZZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zr
 * JD-Core Version:    0.6.2
 */