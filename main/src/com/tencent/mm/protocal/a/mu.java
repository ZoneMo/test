package com.tencent.mm.protocal.a;

public final class mu extends com.tencent.mm.am.a
{
  public String fBp;
  public String fBq;
  public String fBr;

  public static boolean a(a.a.a.a.a parama, mu parammu, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parammu.fBq = parama.aPS();
      return true;
    case 2:
      parammu.fBp = parama.aPS();
      return true;
    case 3:
    }
    parammu.fBr = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBq != null)
      parama.A(1, this.fBq);
    if (this.fBp != null)
      parama.A(2, this.fBp);
    if (this.fBr != null)
      parama.A(3, this.fBr);
  }

  public final int ns()
  {
    String str = this.fBq;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fBq);
    if (this.fBp != null)
      i += a.a.a.a.z(2, this.fBp);
    if (this.fBr != null)
      i += a.a.a.a.z(3, this.fBr);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.mu
 * JD-Core Version:    0.6.2
 */