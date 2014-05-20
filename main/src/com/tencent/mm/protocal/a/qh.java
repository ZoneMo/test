package com.tencent.mm.protocal.a;

public final class qh extends com.tencent.mm.am.a
{
  public double Tl;
  public double Tm;
  public double fSF;

  public static boolean a(a.a.a.a.a parama, qh paramqh, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqh.Tl = parama.aPU();
      return true;
    case 2:
      paramqh.Tm = parama.aPU();
      return true;
    case 3:
    }
    paramqh.fSF = parama.aPU();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.a(1, this.Tl);
    parama.a(2, this.Tm);
    parama.a(3, this.fSF);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.oJ(1);
    int j = i + a.a.a.a.oJ(2);
    return j + a.a.a.a.oJ(3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qh
 * JD-Core Version:    0.6.2
 */