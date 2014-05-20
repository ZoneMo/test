package com.tencent.mm.protocal.a;

public final class as extends rs
{
  public af fAT;
  public int fAU;
  public rv fAV;
  public String fAi;
  public int fAj;
  public String fzT;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fAi != null)
      parama.A(2, this.fAi);
    if (this.fzT != null)
      parama.A(3, this.fzT);
    if (this.fAT != null)
    {
      parama.bv(4, this.fAT.ns());
      this.fAT.a(parama);
    }
    parama.by(5, this.fAj);
    parama.by(6, this.fAU);
    if (this.fAV != null)
    {
      parama.bv(7, this.fAV.ns());
      this.fAV.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fAi != null)
      i += a.a.a.a.z(2, this.fAi);
    if (this.fzT != null)
      i += a.a.a.a.z(3, this.fzT);
    if (this.fAT != null)
      i += a.a.a.a.bs(4, this.fAT.ns());
    int j = i + a.a.a.a.br(5, this.fAj) + a.a.a.a.br(6, this.fAU);
    if (this.fAV != null)
      j += a.a.a.a.bs(7, this.fAV.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.as
 * JD-Core Version:    0.6.2
 */