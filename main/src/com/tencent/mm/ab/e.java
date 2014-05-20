package com.tencent.mm.ab;

import java.util.LinkedList;

public final class e extends com.tencent.mm.am.a
{
  public LinkedList cvN = new LinkedList();
  public double cvO;

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, 8, this.cvN);
    parama.a(2, this.cvO);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.b(1, 8, this.cvN);
    return i + a.a.a.a.oJ(2);
  }

  public final e t(byte[] paramArrayOfByte)
  {
    this.cvN.clear();
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
          d locald = new d();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = d.a(locala2, locald, a(locala2)));
          this.cvN.add(locald);
        }
        j = 1;
        continue;
        this.cvO = locala1.aPU();
        j = 1;
      }
    }
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.e
 * JD-Core Version:    0.6.2
 */