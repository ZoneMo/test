package com.tencent.mm.protocal.a;

public final class ml extends com.tencent.mm.am.a
{
  public String fEA;
  public String fzH;

  public static boolean a(a.a.a.a.a parama, ml paramml, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramml.fzH = parama.aPS();
      return true;
    case 2:
    }
    paramml.fEA = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzH != null)
      parama.A(1, this.fzH);
    if (this.fEA != null)
      parama.A(2, this.fEA);
  }

  public final int ns()
  {
    String str = this.fzH;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzH);
    if (this.fEA != null)
      i += a.a.a.a.z(2, this.fEA);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ml
 * JD-Core Version:    0.6.2
 */