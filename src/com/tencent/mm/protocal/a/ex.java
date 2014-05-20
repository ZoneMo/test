package com.tencent.mm.protocal.a;

public final class ex extends com.tencent.mm.am.a
{
  public int fEE;
  public String fFz;
  public String fyI;

  public static boolean a(a.a.a.a.a parama, ex paramex, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramex.fyI = parama.aPS();
      return true;
    case 2:
      paramex.fFz = parama.aPS();
      return true;
    case 3:
    }
    paramex.fEE = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyI != null)
      parama.A(1, this.fyI);
    if (this.fFz != null)
      parama.A(2, this.fFz);
    parama.by(3, this.fEE);
  }

  public final int ns()
  {
    String str = this.fyI;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyI);
    if (this.fFz != null)
      i += a.a.a.a.z(2, this.fFz);
    return i + a.a.a.a.br(3, this.fEE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ex
 * JD-Core Version:    0.6.2
 */