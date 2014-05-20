package com.tencent.mm.protocal.a;

public final class oc extends com.tencent.mm.am.a
{
  public String fEA;
  public String fPp;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fPp != null)
      parama.A(1, this.fPp);
    if (this.fEA != null)
      parama.A(2, this.fEA);
  }

  public final int ns()
  {
    String str = this.fPp;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fPp);
    if (this.fEA != null)
      i += a.a.a.a.z(2, this.fEA);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.oc
 * JD-Core Version:    0.6.2
 */