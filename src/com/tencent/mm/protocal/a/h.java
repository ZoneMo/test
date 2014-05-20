package com.tencent.mm.protocal.a;

public final class h extends com.tencent.mm.am.a
{
  public int dGR;
  public int fzf;
  public int fzg;
  public int fzh;
  public int fzi;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fzf);
    parama.by(2, this.dGR);
    parama.by(3, this.fzg);
    parama.by(4, this.fzh);
    parama.by(5, this.fzi);
  }

  public final h aC(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.fzf = locala.aPQ();
        j = 1;
        continue;
        this.dGR = locala.aPQ();
        j = 1;
        continue;
        this.fzg = locala.aPQ();
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
    return 0 + a.a.a.a.br(1, this.fzf) + a.a.a.a.br(2, this.dGR) + a.a.a.a.br(3, this.fzg) + a.a.a.a.br(4, this.fzh) + a.a.a.a.br(5, this.fzi);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.h
 * JD-Core Version:    0.6.2
 */