package com.tencent.mm.protocal.a;

public final class ni extends com.tencent.mm.am.a
{
  public int dGR;
  public String fyI;

  public static boolean a(a.a.a.a.a parama, ni paramni, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramni.fyI = parama.aPS();
      return true;
    case 2:
    }
    paramni.dGR = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyI != null)
      parama.A(1, this.fyI);
    parama.by(2, this.dGR);
  }

  public final int ns()
  {
    String str = this.fyI;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyI);
    return i + a.a.a.a.br(2, this.dGR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ni
 * JD-Core Version:    0.6.2
 */