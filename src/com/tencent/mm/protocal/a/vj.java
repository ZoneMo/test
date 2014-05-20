package com.tencent.mm.protocal.a;

public final class vj extends rs
{
  public int fBj;
  public String fPw;
  public long fVV;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBj);
    parama.k(3, this.fVV);
    if (this.fPw != null)
      parama.A(4, this.fPw);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBj) + a.a.a.a.i(3, this.fVV);
    if (this.fPw != null)
      j += a.a.a.a.z(4, this.fPw);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vj
 * JD-Core Version:    0.6.2
 */