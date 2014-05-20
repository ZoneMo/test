package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class gw extends rs
{
  public int dGR;
  public String fJA;
  public int fJd;
  public String fyR;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyR != null)
      parama.A(2, this.fyR);
    parama.by(3, this.dGR);
    parama.by(4, this.fJd);
    if (this.fJA != null)
      parama.A(5, this.fJA);
  }

  public final gw bg(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala1);
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
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList = locala1.oL(i);
        int k = localLinkedList.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte = (byte[])localLinkedList.get(m);
          au localau = new au();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = au.a(locala2, localau, a(locala2)));
          this.fTY = localau;
        }
        j = 1;
        continue;
        this.fyR = locala1.aPS();
        j = 1;
        continue;
        this.dGR = locala1.aPQ();
        j = 1;
        continue;
        this.fJd = locala1.aPQ();
        j = 1;
        continue;
        this.fJA = locala1.aPS();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyR != null)
      i += a.a.a.a.z(2, this.fyR);
    int j = i + a.a.a.a.br(3, this.dGR) + a.a.a.a.br(4, this.fJd);
    if (this.fJA != null)
      j += a.a.a.a.z(5, this.fJA);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gw
 * JD-Core Version:    0.6.2
 */