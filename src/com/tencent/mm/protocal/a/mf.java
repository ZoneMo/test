package com.tencent.mm.protocal.a;

public class mf extends com.tencent.mm.am.a
{
  public int fAC;
  public int fDQ;
  public int fDR;
  public String fNk;
  public int fNl;

  public static boolean a(a.a.a.a.a parama, mf parammf, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parammf.fNl = parama.aPQ();
      return true;
    case 2:
      parammf.fNk = parama.aPS();
      return true;
    case 3:
      parammf.fDQ = parama.aPQ();
      return true;
    case 4:
      parammf.fDR = parama.aPQ();
      return true;
    case 5:
    }
    parammf.fAC = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fNl);
    if (this.fNk != null)
      parama.A(2, this.fNk);
    parama.by(3, this.fDQ);
    parama.by(4, this.fDR);
    parama.by(5, this.fAC);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fNl);
    if (this.fNk != null)
      i += a.a.a.a.z(2, this.fNk);
    return i + a.a.a.a.br(3, this.fDQ) + a.a.a.a.br(4, this.fDR) + a.a.a.a.br(5, this.fAC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.mf
 * JD-Core Version:    0.6.2
 */