package com.tencent.mm.plugin.backup.a;

public final class b extends com.tencent.mm.am.a
{
  public int cIQ;
  public int cIR;
  public int cIT;
  public int cIU;
  public long cIV;
  public long cIW;
  public int cIX;
  public int cIY;
  public int cub;
  public int networkType;

  public final b C(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.cub = locala.aPQ();
        j = 1;
        continue;
        this.cIV = locala.aPW();
        j = 1;
        continue;
        this.cIW = locala.aPW();
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
        this.cIX = locala.aPQ();
        j = 1;
        continue;
        this.cIY = locala.aPQ();
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
    parama.by(1, this.cub);
    parama.k(2, this.cIV);
    parama.k(3, this.cIW);
    parama.by(4, this.networkType);
    parama.by(5, this.cIQ);
    parama.by(6, this.cIR);
    parama.by(7, this.cIX);
    parama.by(8, this.cIY);
    parama.by(9, this.cIT);
    parama.by(10, this.cIU);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.cub) + a.a.a.a.i(2, this.cIV) + a.a.a.a.i(3, this.cIW) + a.a.a.a.br(4, this.networkType) + a.a.a.a.br(5, this.cIQ) + a.a.a.a.br(6, this.cIR) + a.a.a.a.br(7, this.cIX) + a.a.a.a.br(8, this.cIY) + a.a.a.a.br(9, this.cIT) + a.a.a.a.br(10, this.cIU);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.a.b
 * JD-Core Version:    0.6.2
 */