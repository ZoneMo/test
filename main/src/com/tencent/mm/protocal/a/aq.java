package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class aq extends rs
{
  public int fAE;
  public int fAG;
  public int fAI;
  public rv fAJ;
  public int fAK;
  public String fAS;
  public String fAi;
  public int fAj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAJ == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAi != null)
      parama.A(2, this.fAi);
    parama.by(3, this.fAE);
    parama.by(4, this.fAI);
    if (this.fAS != null)
      parama.A(5, this.fAS);
    if (this.fAJ != null)
    {
      parama.bv(6, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    parama.by(7, this.fAK);
    parama.by(8, this.fAG);
    parama.by(9, this.fAj);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAi != null)
      i += a.a.a.a.z(2, this.fAi);
    int j = i + a.a.a.a.br(3, this.fAE) + a.a.a.a.br(4, this.fAI);
    if (this.fAS != null)
      j += a.a.a.a.z(5, this.fAS);
    if (this.fAJ != null)
      j += a.a.a.a.bs(6, this.fAJ.ns());
    return j + a.a.a.a.br(7, this.fAK) + a.a.a.a.br(8, this.fAG) + a.a.a.a.br(9, this.fAj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aq
 * JD-Core Version:    0.6.2
 */