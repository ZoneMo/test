package com.tencent.mm.protocal.a;

public final class eh extends rs
{
  public int dGR;
  public String eBo;
  public int fAL;
  public String fAS;
  public int fAU;
  public int fEd;
  public String fFb;
  public int fFc;
  public int fFd;
  public String fyE;
  public int fzS;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyE != null)
      parama.A(2, this.fyE);
    parama.by(3, this.fzS);
    if (this.fAS != null)
      parama.A(4, this.fAS);
    if (this.eBo != null)
      parama.A(5, this.eBo);
    parama.by(6, this.fAL);
    parama.by(7, this.fEd);
    parama.by(8, this.fAU);
    if (this.fFb != null)
      parama.A(9, this.fFb);
    parama.by(10, this.fFc);
    parama.by(11, this.dGR);
    parama.by(12, this.fFd);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyE != null)
      i += a.a.a.a.z(2, this.fyE);
    int j = i + a.a.a.a.br(3, this.fzS);
    if (this.fAS != null)
      j += a.a.a.a.z(4, this.fAS);
    if (this.eBo != null)
      j += a.a.a.a.z(5, this.eBo);
    int k = j + a.a.a.a.br(6, this.fAL) + a.a.a.a.br(7, this.fEd) + a.a.a.a.br(8, this.fAU);
    if (this.fFb != null)
      k += a.a.a.a.z(9, this.fFb);
    return k + a.a.a.a.br(10, this.fFc) + a.a.a.a.br(11, this.dGR) + a.a.a.a.br(12, this.fFd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.eh
 * JD-Core Version:    0.6.2
 */