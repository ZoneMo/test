package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class zb extends rs
{
  public String fFB;
  public String fSJ;
  public String fSK;
  public int fSL;
  public String fSM;
  public int fSi;
  public rv fZo;
  public int fZp;
  public int fZq;
  public String fZr;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fZo == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fZo != null)
    {
      parama.bv(2, this.fZo.ns());
      this.fZo.a(parama);
    }
    if (this.fFB != null)
      parama.A(3, this.fFB);
    parama.by(4, this.fZp);
    parama.by(5, this.fSi);
    if (this.fSJ != null)
      parama.A(6, this.fSJ);
    if (this.fSK != null)
      parama.A(7, this.fSK);
    if (this.fSM != null)
      parama.A(8, this.fSM);
    parama.by(9, this.fZq);
    if (this.fZr != null)
      parama.A(10, this.fZr);
    parama.by(11, this.fSL);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fZo != null)
      i += a.a.a.a.bs(2, this.fZo.ns());
    if (this.fFB != null)
      i += a.a.a.a.z(3, this.fFB);
    int j = i + a.a.a.a.br(4, this.fZp) + a.a.a.a.br(5, this.fSi);
    if (this.fSJ != null)
      j += a.a.a.a.z(6, this.fSJ);
    if (this.fSK != null)
      j += a.a.a.a.z(7, this.fSK);
    if (this.fSM != null)
      j += a.a.a.a.z(8, this.fSM);
    int k = j + a.a.a.a.br(9, this.fZq);
    if (this.fZr != null)
      k += a.a.a.a.z(10, this.fZr);
    return k + a.a.a.a.br(11, this.fSL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zb
 * JD-Core Version:    0.6.2
 */