package com.tencent.mm.protocal.a;

public final class gf extends com.tencent.mm.am.a
{
  public int fIH;
  public int fII;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fIH);
    parama.by(2, this.fII);
  }

  public final gf aV(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.fIH = locala.aPQ();
        j = 1;
        continue;
        this.fII = locala.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fIH) + a.a.a.a.br(2, this.fII);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gf
 * JD-Core Version:    0.6.2
 */