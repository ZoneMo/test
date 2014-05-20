package com.tencent.mm.protocal.a;

public final class pk extends com.tencent.mm.am.a
{
  public String fCt;
  public int fCu;
  public int fCv;
  public String fRM;
  public String fRN;
  public String fRO;
  public String fRP;
  public String fRQ;
  public String fRR;
  public String fRS;
  public String fyR;
  public String fyV;
  public String fyW;
  public String fyY;

  public static boolean a(a.a.a.a.a parama, pk parampk, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parampk.fyR = parama.aPS();
      return true;
    case 2:
      parampk.fyV = parama.aPS();
      return true;
    case 3:
      parampk.fRM = parama.aPS();
      return true;
    case 4:
      parampk.fyW = parama.aPS();
      return true;
    case 5:
      parampk.fRN = parama.aPS();
      return true;
    case 6:
      parampk.fCv = parama.aPQ();
      return true;
    case 7:
      parampk.fRO = parama.aPS();
      return true;
    case 8:
      parampk.fyY = parama.aPS();
      return true;
    case 9:
      parampk.fCt = parama.aPS();
      return true;
    case 10:
      parampk.fRP = parama.aPS();
      return true;
    case 11:
      parampk.fRQ = parama.aPS();
      return true;
    case 12:
      parampk.fRR = parama.aPS();
      return true;
    case 13:
      parampk.fRS = parama.aPS();
      return true;
    case 14:
    }
    parampk.fCu = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyR != null)
      parama.A(1, this.fyR);
    if (this.fyV != null)
      parama.A(2, this.fyV);
    if (this.fRM != null)
      parama.A(3, this.fRM);
    if (this.fyW != null)
      parama.A(4, this.fyW);
    if (this.fRN != null)
      parama.A(5, this.fRN);
    parama.by(6, this.fCv);
    if (this.fRO != null)
      parama.A(7, this.fRO);
    if (this.fyY != null)
      parama.A(8, this.fyY);
    if (this.fCt != null)
      parama.A(9, this.fCt);
    if (this.fRP != null)
      parama.A(10, this.fRP);
    if (this.fRQ != null)
      parama.A(11, this.fRQ);
    if (this.fRR != null)
      parama.A(12, this.fRR);
    if (this.fRS != null)
      parama.A(13, this.fRS);
    parama.by(14, this.fCu);
  }

  public final int ns()
  {
    String str = this.fyR;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyR);
    if (this.fyV != null)
      i += a.a.a.a.z(2, this.fyV);
    if (this.fRM != null)
      i += a.a.a.a.z(3, this.fRM);
    if (this.fyW != null)
      i += a.a.a.a.z(4, this.fyW);
    if (this.fRN != null)
      i += a.a.a.a.z(5, this.fRN);
    int j = i + a.a.a.a.br(6, this.fCv);
    if (this.fRO != null)
      j += a.a.a.a.z(7, this.fRO);
    if (this.fyY != null)
      j += a.a.a.a.z(8, this.fyY);
    if (this.fCt != null)
      j += a.a.a.a.z(9, this.fCt);
    if (this.fRP != null)
      j += a.a.a.a.z(10, this.fRP);
    if (this.fRQ != null)
      j += a.a.a.a.z(11, this.fRQ);
    if (this.fRR != null)
      j += a.a.a.a.z(12, this.fRR);
    if (this.fRS != null)
      j += a.a.a.a.z(13, this.fRS);
    return j + a.a.a.a.br(14, this.fCu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pk
 * JD-Core Version:    0.6.2
 */