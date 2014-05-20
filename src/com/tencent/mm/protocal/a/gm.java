package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class gm extends rs
{
  public int fAC;
  public String fIL;
  public int fIR;
  public LinkedList fIS = new LinkedList();
  public int fIT;
  public int fIU;
  public int fIV;
  public int fIW;
  public LinkedList fIX = new LinkedList();
  public int fIY;
  public int fIZ;
  public int fJa;
  public int fJb;
  public int fJc;
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
    parama.by(3, this.fAC);
    parama.c(4, 8, this.fIS);
    parama.by(5, this.fIT);
    parama.by(6, this.fIU);
    if (this.fIL != null)
      parama.A(7, this.fIL);
    parama.by(8, this.fIV);
    parama.by(9, this.fIW);
    parama.c(10, 8, this.fIX);
    parama.by(11, this.fIY);
    parama.by(12, this.fIZ);
    parama.by(13, this.fJa);
    parama.by(14, this.fJb);
    parama.by(15, this.fIR);
    parama.by(16, this.fJc);
  }

  public final gm ba(byte[] paramArrayOfByte)
  {
    this.fIS.clear();
    this.fIX.clear();
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
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          au localau = new au();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = au.a(locala4, localau, a(locala4)));
          this.fTY = localau;
        }
        j = 1;
        continue;
        this.fyR = locala1.aPS();
        j = 1;
        continue;
        this.fAC = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          fc localfc = new fc();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = fc.a(locala3, localfc, a(locala3)));
          this.fIS.add(localfc);
        }
        j = 1;
        continue;
        this.fIT = locala1.aPQ();
        j = 1;
        continue;
        this.fIU = locala1.aPQ();
        j = 1;
        continue;
        this.fIL = locala1.aPS();
        j = 1;
        continue;
        this.fIV = locala1.aPQ();
        j = 1;
        continue;
        this.fIW = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          gj localgj = new gj();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = gj.a(locala2, localgj, a(locala2)));
          this.fIX.add(localgj);
        }
        j = 1;
        continue;
        this.fIY = locala1.aPQ();
        j = 1;
        continue;
        this.fIZ = locala1.aPQ();
        j = 1;
        continue;
        this.fJa = locala1.aPQ();
        j = 1;
        continue;
        this.fJb = locala1.aPQ();
        j = 1;
        continue;
        this.fIR = locala1.aPQ();
        j = 1;
        continue;
        this.fJc = locala1.aPQ();
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
    int j = i + a.a.a.a.br(3, this.fAC) + a.a.a.a.b(4, 8, this.fIS) + a.a.a.a.br(5, this.fIT) + a.a.a.a.br(6, this.fIU);
    if (this.fIL != null)
      j += a.a.a.a.z(7, this.fIL);
    return j + a.a.a.a.br(8, this.fIV) + a.a.a.a.br(9, this.fIW) + a.a.a.a.b(10, 8, this.fIX) + a.a.a.a.br(11, this.fIY) + a.a.a.a.br(12, this.fIZ) + a.a.a.a.br(13, this.fJa) + a.a.a.a.br(14, this.fJb) + a.a.a.a.br(15, this.fIR) + a.a.a.a.br(16, this.fJc);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gm
 * JD-Core Version:    0.6.2
 */