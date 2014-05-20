package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class gh extends rs
{
  public int fIK;
  public String fIL;
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
    parama.by(3, this.fIK);
    if (this.fIL != null)
      parama.A(4, this.fIL);
  }

  public final gh aW(byte[] paramArrayOfByte)
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
        this.fIK = locala1.aPQ();
        j = 1;
        continue;
        this.fIL = locala1.aPS();
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
    int j = i + a.a.a.a.br(3, this.fIK);
    if (this.fIL != null)
      j += a.a.a.a.z(4, this.fIL);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gh
 * JD-Core Version:    0.6.2
 */