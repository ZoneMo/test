package com.tencent.mm.protocal.a;

import a.a.a.a.a;
import a.a.a.b;
import java.util.LinkedList;

public final class kp extends rt
{
  public int fAC;
  public LinkedList fAD = new LinkedList();
  public String fMk;
  public rv fMn;
  public int fMo;

  public final kp bp(byte[] paramArrayOfByte)
  {
    this.fAD.clear();
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
          av localav = new av();
          a locala4 = new a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = av.a(locala4, localav, a(locala4)));
          this.fTZ = localav;
        }
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
          rw localrw = new rw();
          a locala3 = new a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = rw.a(locala3, localrw, a(locala3)));
          this.fAD.add(localrw);
        }
        j = 1;
        continue;
        this.fMk = locala1.aPS();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          rv localrv = new rv();
          a locala2 = new a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = rv.a(locala2, localrv, a(locala2)));
          this.fMn = localrv;
        }
        j = 1;
        continue;
        this.fMo = locala1.aPQ();
        j = 1;
      }
    }
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.kp
 * JD-Core Version:    0.6.2
 */