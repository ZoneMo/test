package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class sk extends rs
{
  public int fBj;
  public rw fNa;
  public int fUn;
  public rv fzK;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fNa == null) || (this.fzK == null))
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fNa != null)
    {
      parama.bv(2, this.fNa.ns());
      this.fNa.a(parama);
    }
    parama.by(3, this.fBj);
    parama.by(4, this.fUn);
    if (this.fzK != null)
    {
      parama.bv(5, this.fzK.ns());
      this.fzK.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fNa != null)
      i += a.a.a.a.bs(2, this.fNa.ns());
    int j = i + a.a.a.a.br(3, this.fBj) + a.a.a.a.br(4, this.fUn);
    if (this.fzK != null)
      j += a.a.a.a.bs(5, this.fzK.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sk
 * JD-Core Version:    0.6.2
 */