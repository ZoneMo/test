package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class ru extends com.tencent.mm.am.a
{
  public rw fEI;
  public rw fNa;

  public static boolean a(a.a.a.a.a parama, ru paramru, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rw localrw2 = new rw();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rw.a(locala2, localrw2, a(locala2)));
        paramru.fEI = localrw2;
      }
      return true;
    case 2:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      rw localrw1 = new rw();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = rw.a(locala1, localrw1, a(locala1)));
      paramru.fNa = localrw1;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fEI == null) || (this.fNa == null))
      throw new b("Not all required fields were included");
    if (this.fEI != null)
    {
      parama.bv(1, this.fEI.ns());
      this.fEI.a(parama);
    }
    if (this.fNa != null)
    {
      parama.bv(2, this.fNa.ns());
      this.fNa.a(parama);
    }
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    if (this.fNa != null)
      i += a.a.a.a.bs(2, this.fNa.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ru
 * JD-Core Version:    0.6.2
 */