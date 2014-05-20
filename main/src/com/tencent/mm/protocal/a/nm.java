package com.tencent.mm.protocal.a;

public final class nm extends com.tencent.mm.am.a
{
  public float fOE;
  public float fOF;
  public float fOG;

  public static boolean a(a.a.a.a.a parama, nm paramnm, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramnm.fOE = parama.aPV();
      return true;
    case 2:
      paramnm.fOF = parama.aPV();
      return true;
    case 3:
    }
    paramnm.fOG = parama.aPV();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, this.fOE);
    parama.c(2, this.fOF);
    parama.c(3, this.fOG);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.oK(1);
    int j = i + a.a.a.a.oK(2);
    return j + a.a.a.a.oK(3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nm
 * JD-Core Version:    0.6.2
 */