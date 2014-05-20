package com.tencent.mm.protocal.a;

import a.a.a.a.a;
import a.a.a.b;
import java.util.LinkedList;

public final class kl extends rt
{
  public uf fMf;

  public final kl bo(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (m == 0)
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
          this.fMf = localuf;
        }
        m = 1;
      }
    }
    if ((this.fTZ == null) || (this.fMf == null))
      throw new b("Not all required fields were included");
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.kl
 * JD-Core Version:    0.6.2
 */