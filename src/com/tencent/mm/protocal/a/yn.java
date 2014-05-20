package com.tencent.mm.protocal.a;

public class yn extends com.tencent.mm.am.a
{
  public int fDL;
  public int fDQ;
  public int fDR;
  public int fYQ;
  public String fYR;

  public static boolean a(a.a.a.a.a parama, yn paramyn, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramyn.fDL = parama.aPQ();
      return true;
    case 2:
      paramyn.fYQ = parama.aPQ();
      return true;
    case 3:
      paramyn.fYR = parama.aPS();
      return true;
    case 4:
      paramyn.fDQ = parama.aPQ();
      return true;
    case 5:
    }
    paramyn.fDR = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fDL);
    parama.by(2, this.fYQ);
    if (this.fYR != null)
      parama.A(3, this.fYR);
    parama.by(4, this.fDQ);
    parama.by(5, this.fDR);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fDL) + a.a.a.a.br(2, this.fYQ);
    if (this.fYR != null)
      i += a.a.a.a.z(3, this.fYR);
    return i + a.a.a.a.br(4, this.fDQ) + a.a.a.a.br(5, this.fDR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yn
 * JD-Core Version:    0.6.2
 */