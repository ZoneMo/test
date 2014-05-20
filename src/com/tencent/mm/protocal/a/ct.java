package com.tencent.mm.protocal.a;

public class ct extends com.tencent.mm.am.a
{
  public int fDL;
  public int fDM;
  public int fDN;
  public int fDO;
  public int fDP;
  public int fDQ;
  public int fDR;

  public static boolean a(a.a.a.a.a parama, ct paramct, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramct.fDL = parama.aPQ();
      return true;
    case 2:
      paramct.fDM = parama.aPQ();
      return true;
    case 3:
      paramct.fDN = parama.aPQ();
      return true;
    case 4:
      paramct.fDO = parama.aPQ();
      return true;
    case 5:
      paramct.fDP = parama.aPQ();
      return true;
    case 6:
      paramct.fDQ = parama.aPQ();
      return true;
    case 7:
    }
    paramct.fDR = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fDL);
    parama.by(2, this.fDM);
    parama.by(3, this.fDN);
    parama.by(4, this.fDO);
    parama.by(5, this.fDP);
    parama.by(6, this.fDQ);
    parama.by(7, this.fDR);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fDL) + a.a.a.a.br(2, this.fDM) + a.a.a.a.br(3, this.fDN) + a.a.a.a.br(4, this.fDO) + a.a.a.a.br(5, this.fDP) + a.a.a.a.br(6, this.fDQ) + a.a.a.a.br(7, this.fDR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ct
 * JD-Core Version:    0.6.2
 */