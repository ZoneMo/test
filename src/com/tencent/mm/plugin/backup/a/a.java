package com.tencent.mm.plugin.backup.a;

public final class a extends com.tencent.mm.am.a
{
  public int cIK;
  public int cIL;
  public long cIM;
  public long cIN;
  public long cIO;
  public int cIP;
  public int cIQ;
  public int cIR;
  public int cIS;
  public int cIT;
  public int cIU;
  public int networkType;

  public final a B(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala);
    if (i > 0)
    {
      int j;
      switch (i)
      {
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.cIK = locala.aPQ();
        j = 1;
        continue;
        this.cIL = locala.aPQ();
        j = 1;
        continue;
        this.cIM = locala.aPW();
        j = 1;
        continue;
        this.cIN = locala.aPW();
        j = 1;
        continue;
        this.cIO = locala.aPW();
        j = 1;
        continue;
        this.cIP = locala.aPQ();
        j = 1;
        continue;
        this.networkType = locala.aPQ();
        j = 1;
        continue;
        this.cIQ = locala.aPQ();
        j = 1;
        continue;
        this.cIR = locala.aPQ();
        j = 1;
        continue;
        this.cIS = locala.aPQ();
        j = 1;
        continue;
        this.cIT = locala.aPQ();
        j = 1;
        continue;
        this.cIU = locala.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.cIK);
    parama.by(2, this.cIL);
    parama.k(3, this.cIM);
    parama.k(4, this.cIN);
    parama.k(5, this.cIO);
    parama.by(6, this.cIP);
    parama.by(7, this.networkType);
    parama.by(8, this.cIQ);
    parama.by(9, this.cIR);
    parama.by(10, this.cIS);
    parama.by(11, this.cIT);
    parama.by(12, this.cIU);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.cIK) + a.a.a.a.br(2, this.cIL) + a.a.a.a.i(3, this.cIM) + a.a.a.a.i(4, this.cIN) + a.a.a.a.i(5, this.cIO) + a.a.a.a.br(6, this.cIP) + a.a.a.a.br(7, this.networkType) + a.a.a.a.br(8, this.cIQ) + a.a.a.a.br(9, this.cIR) + a.a.a.a.br(10, this.cIS) + a.a.a.a.br(11, this.cIT) + a.a.a.a.br(12, this.cIU);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.a.a
 * JD-Core Version:    0.6.2
 */