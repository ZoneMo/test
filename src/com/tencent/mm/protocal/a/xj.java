package com.tencent.mm.protocal.a;

public final class xj extends rs
{
  public String Th;
  public String fEM;
  public String fQw;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fEM != null)
      parama.A(2, this.fEM);
    if (this.Th != null)
      parama.A(3, this.Th);
    if (this.fQw != null)
      parama.A(4, this.fQw);
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fEM != null)
      i += a.a.a.a.z(2, this.fEM);
    if (this.Th != null)
      i += a.a.a.a.z(3, this.Th);
    if (this.fQw != null)
      i += a.a.a.a.z(4, this.fQw);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xj
 * JD-Core Version:    0.6.2
 */