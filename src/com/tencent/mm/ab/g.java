package com.tencent.mm.ab;

import java.util.LinkedList;

public final class g extends com.tencent.mm.am.a
{
  public LinkedList cvR = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, 8, this.cvR);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.b(1, 8, this.cvR);
  }

  public final g u(byte[] paramArrayOfByte)
  {
    this.cvR.clear();
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      switch (i)
      {
      default:
      case 1:
      }
      for (int m = 0; ; m = 1)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList = locala1.oL(i);
        int j = localLinkedList.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte = (byte[])localLinkedList.get(k);
          f localf = new f();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = f.a(locala2, localf, a(locala2)));
          this.cvR.add(localf);
        }
      }
    }
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.g
 * JD-Core Version:    0.6.2
 */