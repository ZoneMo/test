package com.tencent.mm.protocal.a;

public final class xe extends com.tencent.mm.am.a
{
  public String fYf;
  public String fYg;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fYf != null)
      parama.A(1, this.fYf);
    if (this.fYg != null)
      parama.A(2, this.fYg);
  }

  public final int ns()
  {
    String str = this.fYf;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fYf);
    if (this.fYg != null)
      i += a.a.a.a.z(2, this.fYg);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xe
 * JD-Core Version:    0.6.2
 */