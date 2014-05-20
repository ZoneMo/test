package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class wz extends com.tencent.mm.am.a
{
  public int fFI;
  public LinkedList fFS = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fFI);
    parama.c(2, 8, this.fFS);
  }

  public final wz bZ(byte[] paramArrayOfByte)
  {
    this.fFS.clear();
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
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
        this.fFI = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList = locala1.oL(i);
        int j = localLinkedList.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte = (byte[])localLinkedList.get(k);
          pq localpq = new pq();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = pq.a(locala2, localpq, a(locala2)));
          this.fFS.add(localpq);
        }
        m = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fFI) + a.a.a.a.b(2, 8, this.fFS);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wz
 * JD-Core Version:    0.6.2
 */