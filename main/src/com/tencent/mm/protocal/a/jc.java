package com.tencent.mm.protocal.a;

public final class jc extends rs
{
  public String fFm;
  public String fLj;
  public String fLk;
  public String fLl;
  public String fLm;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fLj != null)
      parama.A(2, this.fLj);
    if (this.fLk != null)
      parama.A(3, this.fLk);
    if (this.fLl != null)
      parama.A(4, this.fLl);
    if (this.fLm != null)
      parama.A(5, this.fLm);
    if (this.fFm != null)
      parama.A(6, this.fFm);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fLj != null)
      i += a.a.a.a.z(2, this.fLj);
    if (this.fLk != null)
      i += a.a.a.a.z(3, this.fLk);
    if (this.fLl != null)
      i += a.a.a.a.z(4, this.fLl);
    if (this.fLm != null)
      i += a.a.a.a.z(5, this.fLm);
    if (this.fFm != null)
      i += a.a.a.a.z(6, this.fFm);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jc
 * JD-Core Version:    0.6.2
 */