package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class sd extends rs
{
  public int fAE;
  public int fAK;
  public int fCb;
  public int fLI;
  public rv fRA;
  public int fRB;
  public int fRE;
  public int fRz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fRA == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fRz);
    if (this.fRA != null)
    {
      parama.bv(3, this.fRA.ns());
      this.fRA.a(parama);
    }
    parama.by(4, this.fLI);
    parama.by(5, this.fAE);
    parama.by(6, this.fAK);
    parama.by(7, this.fRB);
    parama.by(8, this.fCb);
    parama.by(9, this.fRE);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fRz);
    if (this.fRA != null)
      j += a.a.a.a.bs(3, this.fRA.ns());
    return j + a.a.a.a.br(4, this.fLI) + a.a.a.a.br(5, this.fAE) + a.a.a.a.br(6, this.fAK) + a.a.a.a.br(7, this.fRB) + a.a.a.a.br(8, this.fCb) + a.a.a.a.br(9, this.fRE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sd
 * JD-Core Version:    0.6.2
 */