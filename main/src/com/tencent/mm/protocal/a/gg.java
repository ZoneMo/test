package com.tencent.mm.protocal.a;

public final class gg extends com.tencent.mm.am.a
{
  public String bMa;
  public String fEA;
  public int fIJ;

  public static boolean a(a.a.a.a.a parama, gg paramgg, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramgg.fIJ = parama.aPQ();
      return true;
    case 2:
      paramgg.bMa = parama.aPS();
      return true;
    case 3:
    }
    paramgg.fEA = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fIJ);
    if (this.bMa != null)
      parama.A(2, this.bMa);
    if (this.fEA != null)
      parama.A(3, this.fEA);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fIJ);
    if (this.bMa != null)
      i += a.a.a.a.z(2, this.bMa);
    if (this.fEA != null)
      i += a.a.a.a.z(3, this.fEA);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gg
 * JD-Core Version:    0.6.2
 */