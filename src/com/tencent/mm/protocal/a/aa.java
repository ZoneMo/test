package com.tencent.mm.protocal.a;

public final class aa extends com.tencent.mm.am.a
{
  public String dGT;
  public String fAe;
  public String fAf;
  public String fAg;
  public String fAh;
  public String fyR;
  public String fyV;
  public int fzY;

  public static boolean a(a.a.a.a.a parama, aa paramaa, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramaa.fyR = parama.aPS();
      return true;
    case 2:
      paramaa.fAe = parama.aPS();
      return true;
    case 3:
      paramaa.dGT = parama.aPS();
      return true;
    case 4:
      paramaa.fyV = parama.aPS();
      return true;
    case 5:
      paramaa.fzY = parama.aPQ();
      return true;
    case 6:
      paramaa.fAf = parama.aPS();
      return true;
    case 7:
      paramaa.fAg = parama.aPS();
      return true;
    case 8:
    }
    paramaa.fAh = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyR != null)
      parama.A(1, this.fyR);
    if (this.fAe != null)
      parama.A(2, this.fAe);
    if (this.dGT != null)
      parama.A(3, this.dGT);
    if (this.fyV != null)
      parama.A(4, this.fyV);
    parama.by(5, this.fzY);
    if (this.fAf != null)
      parama.A(6, this.fAf);
    if (this.fAg != null)
      parama.A(7, this.fAg);
    if (this.fAh != null)
      parama.A(8, this.fAh);
  }

  public final int ns()
  {
    String str = this.fyR;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyR);
    if (this.fAe != null)
      i += a.a.a.a.z(2, this.fAe);
    if (this.dGT != null)
      i += a.a.a.a.z(3, this.dGT);
    if (this.fyV != null)
      i += a.a.a.a.z(4, this.fyV);
    int j = i + a.a.a.a.br(5, this.fzY);
    if (this.fAf != null)
      j += a.a.a.a.z(6, this.fAf);
    if (this.fAg != null)
      j += a.a.a.a.z(7, this.fAg);
    if (this.fAh != null)
      j += a.a.a.a.z(8, this.fAh);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aa
 * JD-Core Version:    0.6.2
 */