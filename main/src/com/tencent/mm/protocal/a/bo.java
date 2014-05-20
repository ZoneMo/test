package com.tencent.mm.protocal.a;

public final class bo extends rs
{
  public int fBl;
  public int fBo;
  public String fBp;
  public String fBq;
  public String fBr;
  public String fBs;
  public String fBt;
  public String fBu;
  public String fBv;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    parama.by(2, this.fBl);
    parama.by(3, this.fBo);
    if (this.fBp != null)
      parama.A(4, this.fBp);
    if (this.fBq != null)
      parama.A(5, this.fBq);
    if (this.fBr != null)
      parama.A(6, this.fBr);
    if (this.fBs != null)
      parama.A(7, this.fBs);
    if (this.fBt != null)
      parama.A(8, this.fBt);
    if (this.fBu != null)
      parama.A(9, this.fBu);
    if (this.fBv != null)
      parama.A(10, this.fBv);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    int j = i + a.a.a.a.br(2, this.fBl) + a.a.a.a.br(3, this.fBo);
    if (this.fBp != null)
      j += a.a.a.a.z(4, this.fBp);
    if (this.fBq != null)
      j += a.a.a.a.z(5, this.fBq);
    if (this.fBr != null)
      j += a.a.a.a.z(6, this.fBr);
    if (this.fBs != null)
      j += a.a.a.a.z(7, this.fBs);
    if (this.fBt != null)
      j += a.a.a.a.z(8, this.fBt);
    if (this.fBu != null)
      j += a.a.a.a.z(9, this.fBu);
    if (this.fBv != null)
      j += a.a.a.a.z(10, this.fBv);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bo
 * JD-Core Version:    0.6.2
 */