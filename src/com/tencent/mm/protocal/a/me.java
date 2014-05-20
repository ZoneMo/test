package com.tencent.mm.protocal.a;

public final class me extends com.tencent.mm.am.a
{
  public String fNj;
  public String fNk;

  public static boolean a(a.a.a.a.a parama, me paramme, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramme.fNj = parama.aPS();
      return true;
    case 2:
    }
    paramme.fNk = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fNj != null)
      parama.A(1, this.fNj);
    if (this.fNk != null)
      parama.A(2, this.fNk);
  }

  public final int ns()
  {
    String str = this.fNj;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fNj);
    if (this.fNk != null)
      i += a.a.a.a.z(2, this.fNk);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.me
 * JD-Core Version:    0.6.2
 */