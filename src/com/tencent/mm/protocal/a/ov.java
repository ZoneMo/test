package com.tencent.mm.protocal.a;

public final class ov extends com.tencent.mm.am.a
{
  public int fzo;
  public String fzp;
  public String fzq;
  public int fzu;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzp != null)
      parama.A(1, this.fzp);
    if (this.fzq != null)
      parama.A(2, this.fzq);
    parama.by(3, this.fzo);
    parama.by(4, this.fzu);
  }

  public final ov bF(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.fzp = locala.aPS();
        j = 1;
        continue;
        this.fzq = locala.aPS();
        j = 1;
        continue;
        this.fzo = locala.aPQ();
        j = 1;
        continue;
        this.fzu = locala.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    String str = this.fzp;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzp);
    if (this.fzq != null)
      i += a.a.a.a.z(2, this.fzq);
    return i + a.a.a.a.br(3, this.fzo) + a.a.a.a.br(4, this.fzu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ov
 * JD-Core Version:    0.6.2
 */