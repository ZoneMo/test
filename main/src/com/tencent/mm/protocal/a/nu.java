package com.tencent.mm.protocal.a;

public final class nu extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public int cqq;
  public String cqr;
  public String cqx;
  public int dGR;
  public String eBo;
  public String fDg;
  public String fDh;
  public int fOT;
  public int fOU;

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    parama.by(2, this.dGR);
    parama.by(3, this.cqq);
    if (this.Tv != null)
      parama.A(4, this.Tv);
    if (this.Tu != null)
      parama.A(5, this.Tu);
    if (this.cqr != null)
      parama.A(6, this.cqr);
    parama.by(7, this.fOT);
    parama.by(8, this.fOU);
    if (this.cqx != null)
      parama.A(9, this.cqx);
    if (this.fDg != null)
      parama.A(10, this.fDg);
    if (this.fDh != null)
      parama.A(11, this.fDh);
  }

  public final nu bw(byte[] paramArrayOfByte)
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
        this.dGR = locala.aPQ();
        j = 1;
        continue;
        this.cqq = locala.aPQ();
        j = 1;
        continue;
        this.Tv = locala.aPS();
        j = 1;
        continue;
        this.Tu = locala.aPS();
        j = 1;
        continue;
        this.cqr = locala.aPS();
        j = 1;
        continue;
        this.fOT = locala.aPQ();
        j = 1;
        continue;
        this.fOU = locala.aPQ();
        j = 1;
        continue;
        this.cqx = locala.aPS();
        j = 1;
        continue;
        this.fDg = locala.aPS();
        j = 1;
        continue;
        this.fDh = locala.aPS();
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
    int j = i + a.a.a.a.br(2, this.dGR) + a.a.a.a.br(3, this.cqq);
    if (this.Tv != null)
      j += a.a.a.a.z(4, this.Tv);
    if (this.Tu != null)
      j += a.a.a.a.z(5, this.Tu);
    if (this.cqr != null)
      j += a.a.a.a.z(6, this.cqr);
    int k = j + a.a.a.a.br(7, this.fOT) + a.a.a.a.br(8, this.fOU);
    if (this.cqx != null)
      k += a.a.a.a.z(9, this.cqx);
    if (this.fDg != null)
      k += a.a.a.a.z(10, this.fDg);
    if (this.fDh != null)
      k += a.a.a.a.z(11, this.fDh);
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nu
 * JD-Core Version:    0.6.2
 */