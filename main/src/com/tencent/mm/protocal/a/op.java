package com.tencent.mm.protocal.a;

import com.tencent.mm.am.b;

public final class op extends com.tencent.mm.am.a
{
  public String fDg;
  public String fDh;
  public int fPC;
  public int fPD;
  public b fPE;
  public String fPF;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fPC);
    parama.by(2, this.fPD);
    if (this.fPE != null)
      parama.c(3, this.fPE);
    if (this.fPF != null)
      parama.A(4, this.fPF);
    if (this.fDg != null)
      parama.A(5, this.fDg);
    if (this.fDh != null)
      parama.A(6, this.fDh);
  }

  public final op bB(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.fPC = locala.aPQ();
        j = 1;
        continue;
        this.fPD = locala.aPQ();
        j = 1;
        continue;
        this.fPE = locala.aPX();
        j = 1;
        continue;
        this.fPF = locala.aPS();
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
    int i = 0 + a.a.a.a.br(1, this.fPC) + a.a.a.a.br(2, this.fPD);
    if (this.fPE != null)
      i += a.a.a.a.a(3, this.fPE);
    if (this.fPF != null)
      i += a.a.a.a.z(4, this.fPF);
    if (this.fDg != null)
      i += a.a.a.a.z(5, this.fDg);
    if (this.fDh != null)
      i += a.a.a.a.z(6, this.fDh);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.op
 * JD-Core Version:    0.6.2
 */