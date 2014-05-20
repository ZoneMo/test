package com.tencent.mm.protocal.a;

public final class hc extends com.tencent.mm.am.a
{
  public int fAC;
  public int fIO;

  public static boolean a(a.a.a.a.a parama, hc paramhc, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramhc.fIO = parama.aPQ();
      return true;
    case 2:
    }
    paramhc.fAC = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fIO);
    parama.by(2, this.fAC);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fIO) + a.a.a.a.br(2, this.fAC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.hc
 * JD-Core Version:    0.6.2
 */