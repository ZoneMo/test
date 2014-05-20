package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class tw extends rs
{
  public rv fAJ;
  public int fAK;
  public int fUL;
  public float fUM;
  public int fUN;
  public int fzS;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAJ == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAJ != null)
    {
      parama.bv(2, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    parama.by(3, this.fUL);
    parama.by(4, this.fAK);
    parama.c(5, this.fUM);
    parama.by(6, this.fUN);
    parama.by(7, this.fzS);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAJ != null)
      i += a.a.a.a.bs(2, this.fAJ.ns());
    int j = i + a.a.a.a.br(3, this.fUL) + a.a.a.a.br(4, this.fAK);
    return j + a.a.a.a.oK(5) + a.a.a.a.br(6, this.fUN) + a.a.a.a.br(7, this.fzS);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tw
 * JD-Core Version:    0.6.2
 */