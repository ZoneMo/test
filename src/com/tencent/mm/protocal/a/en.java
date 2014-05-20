package com.tencent.mm.protocal.a;

public final class en extends rs
{
  public int fAE;
  public int fAI;
  public String fzT;
  public int fzo;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fzo);
    parama.by(2, this.fAE);
    parama.by(3, this.fAI);
    if (this.fzT != null)
      parama.A(4, this.fzT);
    if (this.fTY != null)
    {
      parama.bv(5, this.fTY.ns());
      this.fTY.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fzo) + a.a.a.a.br(2, this.fAE) + a.a.a.a.br(3, this.fAI);
    if (this.fzT != null)
      i += a.a.a.a.z(4, this.fzT);
    if (this.fTY != null)
      i += a.a.a.a.bs(5, this.fTY.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.en
 * JD-Core Version:    0.6.2
 */