package com.tencent.mm.protocal.a;

public final class zd extends com.tencent.mm.am.a
{
  public String fNk;
  public String fZt;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fNk != null)
      parama.A(1, this.fNk);
    if (this.fZt != null)
      parama.A(2, this.fZt);
  }

  public final int ns()
  {
    String str = this.fNk;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fNk);
    if (this.fZt != null)
      i += a.a.a.a.z(2, this.fZt);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zd
 * JD-Core Version:    0.6.2
 */