package com.tencent.mm.protocal.a;

import a.a.a.a.a;
import a.a.a.b;
import java.util.LinkedList;

public final class eq extends rt
{
  public ls fBN;
  public by fBO;
  public os fBP;
  public uf fBW;
  public String fFm;

  public final eq aR(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList5 = locala1.oL(i);
        int i6 = localLinkedList5.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i7);
          av localav = new av();
          a locala6 = new a(arrayOfByte5, fxi);
          for (boolean bool5 = true; bool5; bool5 = av.a(locala6, localav, a(locala6)));
          this.fTZ = localav;
        }
        m = 1;
        continue;
        this.fFm = locala1.aPS();
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
          ls localls = new ls();
          a locala4 = new a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = ls.a(locala4, localls, a(locala4)));
          this.fBN = localls;
        }
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          uf localuf = new uf();
          a locala3 = new a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = uf.a(locala3, localuf, a(locala3)));
          this.fBW = localuf;
        }
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          os localos = new os();
          a locala2 = new a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = os.a(locala2, localos, a(locala2)));
          this.fBP = localos;
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
 * Qualified Name:     com.tencent.mm.protocal.a.eq
 * JD-Core Version:    0.6.2
 */