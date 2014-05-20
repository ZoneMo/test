package com.tencent.mm.protocal.a;

public final class jw extends rs
{
  public String fCX;
  public String fyI;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fCX != null)
      parama.A(2, this.fCX);
    if (this.fyI != null)
      parama.A(3, this.fyI);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fCX != null)
      i += a.a.a.a.z(2, this.fCX);
    if (this.fyI != null)
      i += a.a.a.a.z(3, this.fyI);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jw
 * JD-Core Version:    0.6.2
 */