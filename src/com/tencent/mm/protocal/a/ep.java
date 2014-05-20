package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ep extends rs
{
  public rv fBE;
  public String fBF;
  public String fBI;
  public String fBL;
  public String fBk;
  public int fBl;
  public String fFj;
  public String fFk;
  public int fFl;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBE == null)
      throw new b("Not all required fields were included");
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fBE != null)
    {
      parama.bv(2, this.fBE.ns());
      this.fBE.a(parama);
    }
    parama.by(3, this.fBl);
    if (this.fBk != null)
      parama.A(4, this.fBk);
    if (this.fBF != null)
      parama.A(5, this.fBF);
    if (this.fBL != null)
      parama.A(6, this.fBL);
    if (this.fFj != null)
      parama.A(7, this.fFj);
    if (this.fBI != null)
      parama.A(8, this.fBI);
    if (this.fFk != null)
      parama.A(9, this.fFk);
    parama.by(10, this.fFl);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fBE != null)
      i += a.a.a.a.bs(2, this.fBE.ns());
    int j = i + a.a.a.a.br(3, this.fBl);
    if (this.fBk != null)
      j += a.a.a.a.z(4, this.fBk);
    if (this.fBF != null)
      j += a.a.a.a.z(5, this.fBF);
    if (this.fBL != null)
      j += a.a.a.a.z(6, this.fBL);
    if (this.fFj != null)
      j += a.a.a.a.z(7, this.fFj);
    if (this.fBI != null)
      j += a.a.a.a.z(8, this.fBI);
    if (this.fFk != null)
      j += a.a.a.a.z(9, this.fFk);
    return j + a.a.a.a.br(10, this.fFl);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ep
 * JD-Core Version:    0.6.2
 */