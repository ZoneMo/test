package com.tencent.mm.protocal.a;

import a.a.a.b;

public final class ko extends rs
{
  public rv fBE;
  public String fBF;
  public String fBI;
  public String fDe;
  public String fMh;
  public String fMi;
  public String fMj;
  public String fMk;
  public String fMl;
  public int fMm;

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
    if (this.fMh != null)
      parama.A(3, this.fMh);
    if (this.fMi != null)
      parama.A(4, this.fMi);
    if (this.fDe != null)
      parama.A(5, this.fDe);
    if (this.fMj != null)
      parama.A(6, this.fMj);
    if (this.fMk != null)
      parama.A(7, this.fMk);
    if (this.fMl != null)
      parama.A(8, this.fMl);
    parama.by(9, this.fMm);
    if (this.fBF != null)
      parama.A(10, this.fBF);
    if (this.fBI != null)
      parama.A(11, this.fBI);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fBE != null)
      i += a.a.a.a.bs(2, this.fBE.ns());
    if (this.fMh != null)
      i += a.a.a.a.z(3, this.fMh);
    if (this.fMi != null)
      i += a.a.a.a.z(4, this.fMi);
    if (this.fDe != null)
      i += a.a.a.a.z(5, this.fDe);
    if (this.fMj != null)
      i += a.a.a.a.z(6, this.fMj);
    if (this.fMk != null)
      i += a.a.a.a.z(7, this.fMk);
    if (this.fMl != null)
      i += a.a.a.a.z(8, this.fMl);
    int j = i + a.a.a.a.br(9, this.fMm);
    if (this.fBF != null)
      j += a.a.a.a.z(10, this.fBF);
    if (this.fBI != null)
      j += a.a.a.a.z(11, this.fBI);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ko
 * JD-Core Version:    0.6.2
 */