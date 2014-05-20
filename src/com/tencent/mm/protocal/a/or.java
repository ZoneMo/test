package com.tencent.mm.protocal.a;

public final class or extends com.tencent.mm.am.a
{
  public int fAK;
  public String fAS;
  public int fMa;
  public int fPT;
  public String fPU;
  public float fPV;
  public String fPW;
  public String fPX;
  public String fPY;
  public String fPZ;
  public String fQa;
  public String fQb;
  public String fQc;
  public String fQd;
  public String fQe;
  public String fQf;
  public int fQg;
  public String fyE;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fPT);
    parama.by(2, this.fAK);
    if (this.fPU != null)
      parama.A(3, this.fPU);
    parama.c(4, this.fPV);
    if (this.fPW != null)
      parama.A(5, this.fPW);
    if (this.fPX != null)
      parama.A(6, this.fPX);
    if (this.fPY != null)
      parama.A(7, this.fPY);
    if (this.fPZ != null)
      parama.A(8, this.fPZ);
    if (this.fQa != null)
      parama.A(9, this.fQa);
    if (this.fQb != null)
      parama.A(10, this.fQb);
    if (this.fQc != null)
      parama.A(11, this.fQc);
    if (this.fQd != null)
      parama.A(12, this.fQd);
    if (this.fQe != null)
      parama.A(13, this.fQe);
    if (this.fQf != null)
      parama.A(15, this.fQf);
    if (this.fyE != null)
      parama.A(16, this.fyE);
    parama.by(17, this.fQg);
    parama.by(18, this.fMa);
    if (this.fAS != null)
      parama.A(19, this.fAS);
  }

  public final or bD(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala);
    if (i > 0)
    {
      int j;
      switch (i)
      {
      case 14:
      default:
        j = 0;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.fPT = locala.aPQ();
        j = 1;
        continue;
        this.fAK = locala.aPQ();
        j = 1;
        continue;
        this.fPU = locala.aPS();
        j = 1;
        continue;
        this.fPV = locala.aPV();
        j = 1;
        continue;
        this.fPW = locala.aPS();
        j = 1;
        continue;
        this.fPX = locala.aPS();
        j = 1;
        continue;
        this.fPY = locala.aPS();
        j = 1;
        continue;
        this.fPZ = locala.aPS();
        j = 1;
        continue;
        this.fQa = locala.aPS();
        j = 1;
        continue;
        this.fQb = locala.aPS();
        j = 1;
        continue;
        this.fQc = locala.aPS();
        j = 1;
        continue;
        this.fQd = locala.aPS();
        j = 1;
        continue;
        this.fQe = locala.aPS();
        j = 1;
        continue;
        this.fQf = locala.aPS();
        j = 1;
        continue;
        this.fyE = locala.aPS();
        j = 1;
        continue;
        this.fQg = locala.aPQ();
        j = 1;
        continue;
        this.fMa = locala.aPQ();
        j = 1;
        continue;
        this.fAS = locala.aPS();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fPT) + a.a.a.a.br(2, this.fAK);
    if (this.fPU != null)
      i += a.a.a.a.z(3, this.fPU);
    int j = i + a.a.a.a.oK(4);
    if (this.fPW != null)
      j += a.a.a.a.z(5, this.fPW);
    if (this.fPX != null)
      j += a.a.a.a.z(6, this.fPX);
    if (this.fPY != null)
      j += a.a.a.a.z(7, this.fPY);
    if (this.fPZ != null)
      j += a.a.a.a.z(8, this.fPZ);
    if (this.fQa != null)
      j += a.a.a.a.z(9, this.fQa);
    if (this.fQb != null)
      j += a.a.a.a.z(10, this.fQb);
    if (this.fQc != null)
      j += a.a.a.a.z(11, this.fQc);
    if (this.fQd != null)
      j += a.a.a.a.z(12, this.fQd);
    if (this.fQe != null)
      j += a.a.a.a.z(13, this.fQe);
    if (this.fQf != null)
      j += a.a.a.a.z(15, this.fQf);
    if (this.fyE != null)
      j += a.a.a.a.z(16, this.fyE);
    int k = j + a.a.a.a.br(17, this.fQg) + a.a.a.a.br(18, this.fMa);
    if (this.fAS != null)
      k += a.a.a.a.z(19, this.fAS);
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.or
 * JD-Core Version:    0.6.2
 */