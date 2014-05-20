package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class ev extends com.tencent.mm.am.a
{
  public fb fFt;
  public ew fFu;

  public static boolean a(a.a.a.a.a parama, ev paramev, int paramInt)
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
        fb localfb = new fb();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = fb.a(locala2, localfb, a(locala2)));
        paramev.fFt = localfb;
      }
      return true;
    case 2:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      ew localew = new ew();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = ew.a(locala1, localew, a(locala1)));
      paramev.fFu = localew;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fFt == null) || (this.fFu == null))
      throw new b("Not all required fields were included");
    if (this.fFt != null)
    {
      parama.bv(1, this.fFt.ns());
      this.fFt.a(parama);
    }
    if (this.fFu != null)
    {
      parama.bv(2, this.fFu.ns());
      this.fFu.a(parama);
    }
  }

  public final int ns()
  {
    fb localfb = this.fFt;
    int i = 0;
    if (localfb != null)
      i = 0 + a.a.a.a.bs(1, this.fFt.ns());
    if (this.fFu != null)
      i += a.a.a.a.bs(2, this.fFu.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ev
 * JD-Core Version:    0.6.2
 */