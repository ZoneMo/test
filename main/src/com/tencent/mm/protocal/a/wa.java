package com.tencent.mm.protocal.a;

public final class wa extends com.tencent.mm.am.a
{
  public int fXs;
  public int fXt;
  public int fXu;

  public static boolean a(a.a.a.a.a parama, wa paramwa, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramwa.fXs = parama.aPQ();
      return true;
    case 2:
      paramwa.fXt = parama.aPQ();
      return true;
    case 3:
    }
    paramwa.fXu = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fXs);
    parama.by(2, this.fXt);
    parama.by(3, this.fXu);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fXs) + a.a.a.a.br(2, this.fXt) + a.a.a.a.br(3, this.fXu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wa
 * JD-Core Version:    0.6.2
 */