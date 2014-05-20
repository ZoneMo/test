package com.tencent.mm.protocal.a;

import a.a.a.a.a;
import a.a.a.b;
import java.util.LinkedList;

public final class zv extends rt
{
  public int fGe;
  public long fGf;
  public int fZZ;
  public int fzc;
  public int fzy;
  public LinkedList gaa = new LinkedList();
  public String gab;

  public final zv cf(byte[] paramArrayOfByte)
  {
    this.gaa.clear();
    a locala1 = new a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      int j;
      switch (i)
      {
      case 5:
      default:
        j = 0;
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          av localav = new av();
          a locala3 = new a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = av.a(locala3, localav, a(locala3)));
          this.fTZ = localav;
        }
        j = 1;
        continue;
        this.fGe = locala1.aPQ();
        j = 1;
        continue;
        this.fGf = locala1.aPW();
        j = 1;
        continue;
        this.fzy = locala1.aPQ();
        j = 1;
        continue;
        this.fzc = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          aag localaag = new aag();
          a locala2 = new a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = aag.a(locala2, localaag, a(locala2)));
          this.gaa.add(localaag);
        }
        j = 1;
        continue;
        this.gab = locala1.aPS();
        j = 1;
        continue;
        this.fZZ = locala1.aPQ();
        j = 1;
      }
    }
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zv
 * JD-Core Version:    0.6.2
 */