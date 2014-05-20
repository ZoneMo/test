package com.tencent.mm.protocal.a;

public final class js extends rs
{
  public String fLj;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fLj != null)
      parama.A(2, this.fLj);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fLj != null)
      i += a.a.a.a.z(2, this.fLj);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.js
 * JD-Core Version:    0.6.2
 */