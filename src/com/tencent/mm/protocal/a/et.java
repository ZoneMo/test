package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class et extends com.tencent.mm.am.a
{
  public int dGR;
  public int fAL;
  public int fEd;
  public String fFn;
  public rv fFo;
  public String fFp;
  public String fFq;
  public String fFr;
  public String fzq;
  public String fzz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fFo == null)
      throw new b("Not all required fields were included");
    if (this.fFn != null)
      parama.A(1, this.fFn);
    parama.by(2, this.fEd);
    parama.by(3, this.fAL);
    if (this.fFo != null)
    {
      parama.bv(4, this.fFo.ns());
      this.fFo.a(parama);
    }
    parama.by(5, this.dGR);
    if (this.fzq != null)
      parama.A(6, this.fzq);
    if (this.fFp != null)
      parama.A(7, this.fFp);
    if (this.fFq != null)
      parama.A(8, this.fFq);
    if (this.fFr != null)
      parama.A(9, this.fFr);
    if (this.fzz != null)
      parama.A(10, this.fzz);
  }

  public final int ns()
  {
    String str = this.fFn;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fFn);
    int j = i + a.a.a.a.br(2, this.fEd) + a.a.a.a.br(3, this.fAL);
    if (this.fFo != null)
      j += a.a.a.a.bs(4, this.fFo.ns());
    int k = j + a.a.a.a.br(5, this.dGR);
    if (this.fzq != null)
      k += a.a.a.a.z(6, this.fzq);
    if (this.fFp != null)
      k += a.a.a.a.z(7, this.fFp);
    if (this.fFq != null)
      k += a.a.a.a.z(8, this.fFq);
    if (this.fFr != null)
      k += a.a.a.a.z(9, this.fFr);
    if (this.fzz != null)
      k += a.a.a.a.z(10, this.fzz);
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.et
 * JD-Core Version:    0.6.2
 */