package com.tencent.mm.protocal.a;

public final class qk extends rs
{
  public String fEv;
  public String fFB;
  public String fSJ;
  public String fSK;
  public int fSL;
  public int fSi;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fFB != null)
      parama.A(2, this.fFB);
    if (this.fSJ != null)
      parama.A(3, this.fSJ);
    if (this.fSK != null)
      parama.A(4, this.fSK);
    parama.by(5, this.fSi);
    if (this.fEv != null)
      parama.A(7, this.fEv);
    parama.by(8, this.fSL);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fFB != null)
      i += a.a.a.a.z(2, this.fFB);
    if (this.fSJ != null)
      i += a.a.a.a.z(3, this.fSJ);
    if (this.fSK != null)
      i += a.a.a.a.z(4, this.fSK);
    int j = i + a.a.a.a.br(5, this.fSi);
    if (this.fEv != null)
      j += a.a.a.a.z(7, this.fEv);
    return j + a.a.a.a.br(8, this.fSL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qk
 * JD-Core Version:    0.6.2
 */