package com.tencent.mm.protocal.a;

public final class yi extends com.tencent.mm.am.a
{
  public int fAL;
  public int fAU;
  public int fEd;

  public static boolean a(a.a.a.a.a parama, yi paramyi, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramyi.fAL = parama.aPQ();
      return true;
    case 2:
      paramyi.fEd = parama.aPQ();
      return true;
    case 3:
    }
    paramyi.fAU = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAL);
    parama.by(2, this.fEd);
    parama.by(3, this.fAU);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fAL) + a.a.a.a.br(2, this.fEd) + a.a.a.a.br(3, this.fAU);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yi
 * JD-Core Version:    0.6.2
 */