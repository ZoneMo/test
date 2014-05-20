package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class hk extends rs
{
  public String eBo;
  public int fBj;
  public rv fCj;
  public rw fJJ;
  public rw fJK;
  public rw fJL;
  public rw fJM;
  public String fJN;
  public int fJO;
  public String fJP;
  public rv fJQ;
  public int fJR;
  public int fyJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fCj == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBj);
    if (this.fCj != null)
    {
      parama.bv(3, this.fCj.ns());
      this.fCj.a(parama);
    }
    if (this.fJJ != null)
    {
      parama.bv(4, this.fJJ.ns());
      this.fJJ.a(parama);
    }
    if (this.fJK != null)
    {
      parama.bv(5, this.fJK.ns());
      this.fJK.a(parama);
    }
    if (this.fJL != null)
    {
      parama.bv(6, this.fJL.ns());
      this.fJL.a(parama);
    }
    if (this.fJM != null)
    {
      parama.bv(7, this.fJM.ns());
      this.fJM.a(parama);
    }
    if (this.fJN != null)
      parama.A(8, this.fJN);
    parama.by(9, this.fJO);
    parama.by(10, this.fyJ);
    if (this.eBo != null)
      parama.A(11, this.eBo);
    if (this.fJP != null)
      parama.A(12, this.fJP);
    if (this.fJQ != null)
    {
      parama.bv(13, this.fJQ.ns());
      this.fJQ.a(parama);
    }
    parama.by(14, this.fJR);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBj);
    if (this.fCj != null)
      j += a.a.a.a.bs(3, this.fCj.ns());
    if (this.fJJ != null)
      j += a.a.a.a.bs(4, this.fJJ.ns());
    if (this.fJK != null)
      j += a.a.a.a.bs(5, this.fJK.ns());
    if (this.fJL != null)
      j += a.a.a.a.bs(6, this.fJL.ns());
    if (this.fJM != null)
      j += a.a.a.a.bs(7, this.fJM.ns());
    if (this.fJN != null)
      j += a.a.a.a.z(8, this.fJN);
    int k = j + a.a.a.a.br(9, this.fJO) + a.a.a.a.br(10, this.fyJ);
    if (this.eBo != null)
      k += a.a.a.a.z(11, this.eBo);
    if (this.fJP != null)
      k += a.a.a.a.z(12, this.fJP);
    if (this.fJQ != null)
      k += a.a.a.a.bs(13, this.fJQ.ns());
    return k + a.a.a.a.br(14, this.fJR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.hk
 * JD-Core Version:    0.6.2
 */