package com.tencent.mm.protocal.a;

public final class wc extends rs
{
  public ui fXw;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fXw != null)
    {
      parama.bv(2, this.fXw.ns());
      this.fXw.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fXw != null)
      i += a.a.a.a.bs(2, this.fXw.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wc
 * JD-Core Version:    0.6.2
 */