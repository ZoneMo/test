package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class gi extends rt
{
  public int fIM;
  public int fIN;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    parama.by(2, this.fIM);
    parama.by(3, this.fIN);
  }

  public final gi aX(byte[] paramArrayOfByte)
  {
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
      case 3:
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
          av localav = new av();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = av.a(locala2, localav, a(locala2)));
          this.fTZ = localav;
        }
        j = 1;
        continue;
        this.fIM = locala1.aPQ();
        j = 1;
        continue;
        this.fIN = locala1.aPQ();
        j = 1;
      }
    }
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    av localav = this.fTZ;
    int i = 0;
    if (localav != null)
      i = 0 + a.a.a.a.bs(1, this.fTZ.ns());
    return i + a.a.a.a.br(2, this.fIM) + a.a.a.a.br(3, this.fIN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gi
 * JD-Core Version:    0.6.2
 */