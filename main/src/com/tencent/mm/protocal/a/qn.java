package com.tencent.mm.protocal.a;

public final class qn extends com.tencent.mm.am.a
{
  public String eBo;
  public String fDf;
  public int fEx;
  public int fTa;

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    if (this.fDf != null)
      parama.A(2, this.fDf);
    parama.by(3, this.fTa);
    parama.by(4, this.fEx);
  }

  public final qn bJ(byte[] paramArrayOfByte)
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
        this.eBo = locala.aPS();
        j = 1;
        continue;
        this.fDf = locala.aPS();
        j = 1;
        continue;
        this.fTa = locala.aPQ();
        j = 1;
        continue;
        this.fEx = locala.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    if (this.fDf != null)
      i += a.a.a.a.z(2, this.fDf);
    return i + a.a.a.a.br(3, this.fTa) + a.a.a.a.br(4, this.fEx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qn
 * JD-Core Version:    0.6.2
 */