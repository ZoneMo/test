package com.tencent.mm.protocal.a;

public final class fc extends com.tencent.mm.am.a
{
  public int dGR;
  public int fAC;
  public int fGb;
  public int fGc;

  public static boolean a(a.a.a.a.a parama, fc paramfc, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfc.dGR = parama.aPQ();
      return true;
    case 2:
      paramfc.fAC = parama.aPQ();
      return true;
    case 3:
      paramfc.fGb = parama.aPQ();
      return true;
    case 4:
    }
    paramfc.fGc = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.dGR);
    parama.by(2, this.fAC);
    parama.by(3, this.fGb);
    parama.by(4, this.fGc);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.dGR) + a.a.a.a.br(2, this.fAC) + a.a.a.a.br(3, this.fGb) + a.a.a.a.br(4, this.fGc);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fc
 * JD-Core Version:    0.6.2
 */