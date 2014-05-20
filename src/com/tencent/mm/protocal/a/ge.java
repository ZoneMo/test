package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ge extends com.tencent.mm.am.a
{
  public LinkedList fIG = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, 8, this.fIG);
  }

  public final ge aU(byte[] paramArrayOfByte)
  {
    this.fIG.clear();
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
          fr localfr = new fr();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = fr.a(locala2, localfr, a(locala2)));
          this.fIG.add(localfr);
        }
      }
    }
    return this;
  }

  public final int ns()
  {
    return 0 + a.a.a.a.b(1, 8, this.fIG);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ge
 * JD-Core Version:    0.6.2
 */