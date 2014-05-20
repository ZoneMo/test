package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class yl extends rs
{
  public int fAE;
  public int fAG;
  public int fAI;
  public rv fAJ;
  public int fAK;
  public int fFi;
  public int fYN;
  public int fYO;
  public int fYP;
  public String fzT;
  public int fzo;
  public String fzp;
  public String fzq;
  public String fzz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAJ == null)
      throw new b("Not all required fields were included");
    if (this.fzp != null)
      parama.A(1, this.fzp);
    if (this.fzq != null)
      parama.A(2, this.fzq);
    parama.by(3, this.fAE);
    parama.by(4, this.fAI);
    if (this.fzT != null)
      parama.A(5, this.fzT);
    parama.by(6, this.fzo);
    parama.by(7, this.fFi);
    if (this.fAJ != null)
    {
      parama.bv(8, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    parama.by(9, this.fAK);
    if (this.fTY != null)
    {
      parama.bv(10, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(11, this.fAG);
    if (this.fzz != null)
      parama.A(12, this.fzz);
    parama.by(13, this.fYN);
    parama.by(14, this.fYO);
    parama.by(15, this.fYP);
  }

  public final int ns()
  {
    String str = this.fzp;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzp);
    if (this.fzq != null)
      i += a.a.a.a.z(2, this.fzq);
    int j = i + a.a.a.a.br(3, this.fAE) + a.a.a.a.br(4, this.fAI);
    if (this.fzT != null)
      j += a.a.a.a.z(5, this.fzT);
    int k = j + a.a.a.a.br(6, this.fzo) + a.a.a.a.br(7, this.fFi);
    if (this.fAJ != null)
      k += a.a.a.a.bs(8, this.fAJ.ns());
    int m = k + a.a.a.a.br(9, this.fAK);
    if (this.fTY != null)
      m += a.a.a.a.bs(10, this.fTY.ns());
    int n = m + a.a.a.a.br(11, this.fAG);
    if (this.fzz != null)
      n += a.a.a.a.z(12, this.fzz);
    return n + a.a.a.a.br(13, this.fYN) + a.a.a.a.br(14, this.fYO) + a.a.a.a.br(15, this.fYP);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yl
 * JD-Core Version:    0.6.2
 */