package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class db extends rs
{
  public rv fAJ;
  public int fAL;
  public int fAU;
  public int fEd;
  public String fEe;
  public String fEf;
  public int fEg;
  public String fzj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAJ == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fzj != null)
      parama.A(2, this.fzj);
    parama.by(3, this.fAL);
    parama.by(4, this.fEd);
    parama.by(5, this.fAU);
    if (this.fAJ != null)
    {
      parama.bv(6, this.fAJ.ns());
      this.fAJ.a(parama);
    }
    if (this.fEe != null)
      parama.A(7, this.fEe);
    if (this.fEf != null)
      parama.A(9, this.fEf);
    parama.by(10, this.fEg);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fzj != null)
      i += a.a.a.a.z(2, this.fzj);
    int j = i + a.a.a.a.br(3, this.fAL) + a.a.a.a.br(4, this.fEd) + a.a.a.a.br(5, this.fAU);
    if (this.fAJ != null)
      j += a.a.a.a.bs(6, this.fAJ.ns());
    if (this.fEe != null)
      j += a.a.a.a.z(7, this.fEe);
    if (this.fEf != null)
      j += a.a.a.a.z(9, this.fEf);
    return j + a.a.a.a.br(10, this.fEg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.db
 * JD-Core Version:    0.6.2
 */