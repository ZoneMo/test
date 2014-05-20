package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class dp extends com.tencent.mm.am.a
{
  public rw fEI;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEI == null)
      throw new b("Not all required fields were included");
    if (this.fEI != null)
    {
      parama.bv(1, this.fEI.ns());
      this.fEI.a(parama);
    }
  }

  public final dp aO(byte[] paramArrayOfByte)
  {
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
          rw localrw = new rw();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = rw.a(locala2, localrw, a(locala2)));
          this.fEI = localrw;
        }
      }
    }
    if (this.fEI == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dp
 * JD-Core Version:    0.6.2
 */