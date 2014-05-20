package com.tencent.mm.protocal.a;

public final class lv extends com.tencent.mm.am.a
{
  public String eBo;
  public int fNb;

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    parama.by(2, this.fNb);
  }

  public final lv br(byte[] paramArrayOfByte)
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
        this.eBo = locala.aPS();
        j = 1;
        continue;
        this.fNb = locala.aPQ();
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
    return i + a.a.a.a.br(2, this.fNb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lv
 * JD-Core Version:    0.6.2
 */