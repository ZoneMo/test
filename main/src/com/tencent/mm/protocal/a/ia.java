package com.tencent.mm.protocal.a;

public final class ia extends rs
{
  public String eBo;
  public rv fKq;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fKq != null)
    {
      parama.bv(3, this.fKq.ns());
      this.fKq.a(parama);
    }
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fKq != null)
      i += a.a.a.a.bs(3, this.fKq.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ia
 * JD-Core Version:    0.6.2
 */