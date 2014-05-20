package com.tencent.mm.protocal.a;

public final class nx extends com.tencent.mm.am.a
{
  public String eBo;
  public String fDf;
  public String fEJ;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEJ != null)
      parama.A(1, this.fEJ);
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fDf != null)
      parama.A(3, this.fDf);
  }

  public final int ns()
  {
    String str = this.fEJ;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fEJ);
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fDf != null)
      i += a.a.a.a.z(3, this.fDf);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nx
 * JD-Core Version:    0.6.2
 */