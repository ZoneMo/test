package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class nn extends com.tencent.mm.am.a
{
  public int cky;
  public String etE;
  public String fEA;
  public int fOD;
  public ni fOH;
  public int fOI;
  public LinkedList fOJ = new LinkedList();
  public int fOK;
  public String fOL;
  public String fOM;
  public int fOp;
  public int fOu;
  public int fOv;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fOu);
    parama.by(2, this.fOv);
    parama.by(3, this.fOp);
    if (this.fOH != null)
    {
      parama.bv(4, this.fOH.ns());
      this.fOH.a(parama);
    }
    parama.by(5, this.fOI);
    parama.c(6, 8, this.fOJ);
    parama.by(7, this.cky);
    parama.by(8, this.fOK);
    if (this.fEA != null)
      parama.A(9, this.fEA);
    if (this.fOL != null)
      parama.A(10, this.fOL);
    if (this.etE != null)
      parama.A(11, this.etE);
    if (this.fOM != null)
      parama.A(12, this.fOM);
    parama.by(13, this.fOD);
  }

  public final nn bv(byte[] paramArrayOfByte)
  {
    this.fOJ.clear();
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
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.fOu = locala1.aPQ();
        j = 1;
        continue;
        this.fOv = locala1.aPQ();
        j = 1;
        continue;
        this.fOp = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          ni localni2 = new ni();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = ni.a(locala3, localni2, a(locala3)));
          this.fOH = localni2;
        }
        j = 1;
        continue;
        this.fOI = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          ni localni1 = new ni();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = ni.a(locala2, localni1, a(locala2)));
          this.fOJ.add(localni1);
        }
        j = 1;
        continue;
        this.cky = locala1.aPQ();
        j = 1;
        continue;
        this.fOK = locala1.aPQ();
        j = 1;
        continue;
        this.fEA = locala1.aPS();
        j = 1;
        continue;
        this.fOL = locala1.aPS();
        j = 1;
        continue;
        this.etE = locala1.aPS();
        j = 1;
        continue;
        this.fOM = locala1.aPS();
        j = 1;
        continue;
        this.fOD = locala1.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fOu) + a.a.a.a.br(2, this.fOv) + a.a.a.a.br(3, this.fOp);
    if (this.fOH != null)
      i += a.a.a.a.bs(4, this.fOH.ns());
    int j = i + a.a.a.a.br(5, this.fOI) + a.a.a.a.b(6, 8, this.fOJ) + a.a.a.a.br(7, this.cky) + a.a.a.a.br(8, this.fOK);
    if (this.fEA != null)
      j += a.a.a.a.z(9, this.fEA);
    if (this.fOL != null)
      j += a.a.a.a.z(10, this.fOL);
    if (this.etE != null)
      j += a.a.a.a.z(11, this.etE);
    if (this.fOM != null)
      j += a.a.a.a.z(12, this.fOM);
    return j + a.a.a.a.br(13, this.fOD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nn
 * JD-Core Version:    0.6.2
 */