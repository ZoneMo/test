package com.tencent.mm.protocal.a;

import a.a.a.a.a;
import a.a.a.b;
import java.util.LinkedList;

public final class oz extends rt
{
  public int fIz;
  public rv fRd;
  public rv fRe;
  public int fRf;
  public int fRg;
  public LinkedList fRh = new LinkedList();
  public int fRi;

  public final oz bG(byte[] paramArrayOfByte)
  {
    this.fRh.clear();
    a locala1 = new a(paramArrayOfByte, fxi);
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
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          av localav = new av();
          a locala5 = new a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = av.a(locala5, localav, a(locala5)));
          this.fTZ = localav;
        }
        j = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          rv localrv2 = new rv();
          a locala4 = new a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = rv.a(locala4, localrv2, a(locala4)));
          this.fRd = localrv2;
        }
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          rv localrv1 = new rv();
          a locala3 = new a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = rv.a(locala3, localrv1, a(locala3)));
          this.fRe = localrv1;
        }
        j = 1;
        continue;
        this.fIz = locala1.aPQ();
        j = 1;
        continue;
        this.fRf = locala1.aPQ();
        j = 1;
        continue;
        this.fRg = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          cx localcx = new cx();
          a locala2 = new a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = cx.a(locala2, localcx, a(locala2)));
          this.fRh.add(localcx);
        }
        j = 1;
        continue;
        this.fRi = locala1.aPQ();
        j = 1;
      }
    }
    if ((this.fTZ == null) || (this.fRd == null) || (this.fRe == null))
      throw new b("Not all required fields were included");
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.oz
 * JD-Core Version:    0.6.2
 */