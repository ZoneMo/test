package com.tencent.mm.protocal.a;

public final class cc extends rs
{
  public String fDa;
  public String fDb;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fDa != null)
      parama.A(2, this.fDa);
    if (this.fDb != null)
      parama.A(3, this.fDb);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fDa != null)
      i += a.a.a.a.z(2, this.fDa);
    if (this.fDb != null)
      i += a.a.a.a.z(3, this.fDb);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.cc
 * JD-Core Version:    0.6.2
 */