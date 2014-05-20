package com.tencent.mm.protocal.a;

public final class lz extends com.tencent.mm.am.a
{
  public int fJG;
  public int fNd;

  public static boolean a(a.a.a.a.a parama, lz paramlz, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramlz.fJG = parama.aPQ();
      return true;
    case 2:
    }
    paramlz.fNd = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fJG);
    parama.by(2, this.fNd);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fJG) + a.a.a.a.br(2, this.fNd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lz
 * JD-Core Version:    0.6.2
 */