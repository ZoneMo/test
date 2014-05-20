package com.tencent.mm.protocal.a;

public final class fb extends com.tencent.mm.am.a
{
  public String dGT;
  public String fFB;
  public String fFC;
  public String fFD;
  public String fFE;
  public String fFF;
  public int fFG;
  public int fFH;
  public String fFK;
  public int fFL;
  public String fFM;
  public String fFN;
  public String fFO;
  public String fFP;
  public String fFU;
  public int fFX;
  public String fFY;
  public String fFZ;
  public String fGa;

  public static boolean a(a.a.a.a.a parama, fb paramfb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfb.fFB = parama.aPS();
      return true;
    case 2:
      paramfb.dGT = parama.aPS();
      return true;
    case 3:
      paramfb.fFC = parama.aPS();
      return true;
    case 4:
      paramfb.fFD = parama.aPS();
      return true;
    case 5:
      paramfb.fFE = parama.aPS();
      return true;
    case 6:
      paramfb.fFF = parama.aPS();
      return true;
    case 7:
      paramfb.fFG = parama.aPQ();
      return true;
    case 8:
      paramfb.fFH = parama.aPQ();
      return true;
    case 9:
      paramfb.fFK = parama.aPS();
      return true;
    case 10:
      paramfb.fFL = parama.aPQ();
      return true;
    case 11:
      paramfb.fFM = parama.aPS();
      return true;
    case 12:
      paramfb.fFX = parama.aPQ();
      return true;
    case 13:
      paramfb.fFP = parama.aPS();
      return true;
    case 14:
      paramfb.fFN = parama.aPS();
      return true;
    case 15:
      paramfb.fFO = parama.aPS();
      return true;
    case 16:
      paramfb.fFY = parama.aPS();
      return true;
    case 17:
      paramfb.fFU = parama.aPS();
      return true;
    case 18:
      paramfb.fFZ = parama.aPS();
      return true;
    case 19:
    }
    paramfb.fGa = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fFB != null)
      parama.A(1, this.fFB);
    if (this.dGT != null)
      parama.A(2, this.dGT);
    if (this.fFC != null)
      parama.A(3, this.fFC);
    if (this.fFD != null)
      parama.A(4, this.fFD);
    if (this.fFE != null)
      parama.A(5, this.fFE);
    if (this.fFF != null)
      parama.A(6, this.fFF);
    parama.by(7, this.fFG);
    parama.by(8, this.fFH);
    if (this.fFK != null)
      parama.A(9, this.fFK);
    parama.by(10, this.fFL);
    if (this.fFM != null)
      parama.A(11, this.fFM);
    parama.by(12, this.fFX);
    if (this.fFP != null)
      parama.A(13, this.fFP);
    if (this.fFN != null)
      parama.A(14, this.fFN);
    if (this.fFO != null)
      parama.A(15, this.fFO);
    if (this.fFY != null)
      parama.A(16, this.fFY);
    if (this.fFU != null)
      parama.A(17, this.fFU);
    if (this.fFZ != null)
      parama.A(18, this.fFZ);
    if (this.fGa != null)
      parama.A(19, this.fGa);
  }

  public final int ns()
  {
    String str = this.fFB;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fFB);
    if (this.dGT != null)
      i += a.a.a.a.z(2, this.dGT);
    if (this.fFC != null)
      i += a.a.a.a.z(3, this.fFC);
    if (this.fFD != null)
      i += a.a.a.a.z(4, this.fFD);
    if (this.fFE != null)
      i += a.a.a.a.z(5, this.fFE);
    if (this.fFF != null)
      i += a.a.a.a.z(6, this.fFF);
    int j = i + a.a.a.a.br(7, this.fFG) + a.a.a.a.br(8, this.fFH);
    if (this.fFK != null)
      j += a.a.a.a.z(9, this.fFK);
    int k = j + a.a.a.a.br(10, this.fFL);
    if (this.fFM != null)
      k += a.a.a.a.z(11, this.fFM);
    int m = k + a.a.a.a.br(12, this.fFX);
    if (this.fFP != null)
      m += a.a.a.a.z(13, this.fFP);
    if (this.fFN != null)
      m += a.a.a.a.z(14, this.fFN);
    if (this.fFO != null)
      m += a.a.a.a.z(15, this.fFO);
    if (this.fFY != null)
      m += a.a.a.a.z(16, this.fFY);
    if (this.fFU != null)
      m += a.a.a.a.z(17, this.fFU);
    if (this.fFZ != null)
      m += a.a.a.a.z(18, this.fFZ);
    if (this.fGa != null)
      m += a.a.a.a.z(19, this.fGa);
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fb
 * JD-Core Version:    0.6.2
 */