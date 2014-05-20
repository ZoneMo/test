package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class ro extends com.tencent.mm.am.a
{
  public rw fTP;
  public int fTQ;
  public LinkedList fTR = new LinkedList();

  public static boolean a(a.a.a.a.a parama, ro paramro, int paramInt)
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
        rw localrw = new rw();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rw.a(locala2, localrw, a(locala2)));
        paramro.fTP = localrw;
      }
      return true;
    case 2:
      paramro.fTQ = parama.aPQ();
      return true;
    case 3:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      sm localsm = new sm();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = sm.a(locala1, localsm, a(locala1)));
      paramro.fTR.add(localsm);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTP == null)
      throw new b("Not all required fields were included");
    if (this.fTP != null)
    {
      parama.bv(1, this.fTP.ns());
      this.fTP.a(parama);
    }
    parama.by(2, this.fTQ);
    parama.c(3, 8, this.fTR);
  }

  public final int ns()
  {
    rw localrw = this.fTP;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fTP.ns());
    return i + a.a.a.a.br(2, this.fTQ) + a.a.a.a.b(3, 8, this.fTR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ro
 * JD-Core Version:    0.6.2
 */