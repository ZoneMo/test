package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class md extends rt
{
  public String fCZ;
  public String fGl;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    if (this.fGl != null)
      parama.A(2, this.fGl);
    if (this.fCZ != null)
      parama.A(3, this.fCZ);
  }

  public final md bs(byte[] paramArrayOfByte)
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
        this.fGl = locala1.aPS();
        j = 1;
        continue;
        this.fCZ = locala1.aPS();
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
    if (this.fGl != null)
      i += a.a.a.a.z(2, this.fGl);
    if (this.fCZ != null)
      i += a.a.a.a.z(3, this.fCZ);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.md
 * JD-Core Version:    0.6.2
 */