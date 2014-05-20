package com.tencent.mm.protocal.a;

public final class k extends com.tencent.mm.am.a
{
  public int dGR;
  public int fzg;
  public int fzh;
  public int fzi;
  public int fzo;
  public String fzp;
  public String fzq;
  public int fzr;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fzo);
    if (this.fzp != null)
      parama.A(2, this.fzp);
    if (this.fzq != null)
      parama.A(3, this.fzq);
    parama.by(4, this.dGR);
    parama.by(5, this.fzg);
    parama.by(6, this.fzr);
    parama.by(7, this.fzh);
    parama.by(8, this.fzi);
  }

  public final k aD(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.fzo = locala.aPQ();
        j = 1;
        continue;
        this.fzp = locala.aPS();
        j = 1;
        continue;
        this.fzq = locala.aPS();
        j = 1;
        continue;
        this.dGR = locala.aPQ();
        j = 1;
        continue;
        this.fzg = locala.aPQ();
        j = 1;
        continue;
        this.fzr = locala.aPQ();
        j = 1;
        continue;
        this.fzh = locala.aPQ();
        j = 1;
        continue;
        this.fzi = locala.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fzo);
    if (this.fzp != null)
      i += a.a.a.a.z(2, this.fzp);
    if (this.fzq != null)
      i += a.a.a.a.z(3, this.fzq);
    return i + a.a.a.a.br(4, this.dGR) + a.a.a.a.br(5, this.fzg) + a.a.a.a.br(6, this.fzr) + a.a.a.a.br(7, this.fzh) + a.a.a.a.br(8, this.fzi);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.k
 * JD-Core Version:    0.6.2
 */