package com.tencent.mm.protocal.a;

import a.a.a.a.a;
import a.a.a.b;
import java.util.LinkedList;

public final class br extends rt
{
  public String cgp;
  public String fBA;
  public String fBJ;
  public int fBK;
  public String fBL;
  public String fBM;
  public ls fBN;
  public by fBO;
  public os fBP;
  public int fBQ;
  public String fBR;
  public int fBS;
  public rz fBT;
  public String fBU;
  public String fBV;
  public uf fBW;

  public final br aI(byte[] paramArrayOfByte)
  {
    a locala1 = new a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      int m;
      switch (i)
      {
      default:
        m = 0;
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
      case 17:
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList6 = locala1.oL(i);
        int i8 = localLinkedList6.size();
        for (int i9 = 0; i9 < i8; i9++)
        {
          byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i9);
          av localav = new av();
          a locala7 = new a(arrayOfByte6, fxi);
          for (boolean bool6 = true; bool6; bool6 = av.a(locala7, localav, a(locala7)));
          this.fTZ = localav;
        }
        m = 1;
        continue;
        this.cgp = locala1.aPS();
        m = 1;
        continue;
        this.fBJ = locala1.aPS();
        m = 1;
        continue;
        this.fBK = locala1.aPQ();
        m = 1;
        continue;
        this.fBL = locala1.aPS();
        m = 1;
        continue;
        this.fBM = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList5 = locala1.oL(i);
        int i6 = localLinkedList5.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i7);
          ls localls = new ls();
          a locala6 = new a(arrayOfByte5, fxi);
          for (boolean bool5 = true; bool5; bool5 = ls.a(locala6, localls, a(locala6)));
          this.fBN = localls;
        }
        m = 1;
        continue;
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          by localby = new by();
          a locala5 = new a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = by.a(locala5, localby, a(locala5)));
          this.fBO = localby;
        }
        m = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          os localos = new os();
          a locala4 = new a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = os.a(locala4, localos, a(locala4)));
          this.fBP = localos;
        }
        m = 1;
        continue;
        this.fBA = locala1.aPS();
        m = 1;
        continue;
        this.fBQ = locala1.aPQ();
        m = 1;
        continue;
        this.fBR = locala1.aPS();
        m = 1;
        continue;
        this.fBS = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          rz localrz = new rz();
          a locala3 = new a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = rz.a(locala3, localrz, a(locala3)));
          this.fBT = localrz;
        }
        m = 1;
        continue;
        this.fBU = locala1.aPS();
        m = 1;
        continue;
        this.fBV = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          uf localuf = new uf();
          a locala2 = new a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = uf.a(locala2, localuf, a(locala2)));
          this.fBW = localuf;
        }
        m = 1;
      }
    }
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.br
 * JD-Core Version:    0.6.2
 */