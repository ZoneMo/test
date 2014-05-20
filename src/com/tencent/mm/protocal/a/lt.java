package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class lt extends com.tencent.mm.am.a
{
  public rw fMZ;
  public rv fzx;

  public static boolean a(a.a.a.a.a parama, lt paramlt, int paramInt)
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
        rv localrv = new rv();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rv.a(locala2, localrv, a(locala2)));
        paramlt.fzx = localrv;
      }
      return true;
    case 2:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      rw localrw = new rw();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = rw.a(locala1, localrw, a(locala1)));
      paramlt.fMZ = localrw;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fzx == null) || (this.fMZ == null))
      throw new b("Not all required fields were included");
    if (this.fzx != null)
    {
      parama.bv(1, this.fzx.ns());
      this.fzx.a(parama);
    }
    if (this.fMZ != null)
    {
      parama.bv(2, this.fMZ.ns());
      this.fMZ.a(parama);
    }
  }

  public final int ns()
  {
    rv localrv = this.fzx;
    int i = 0;
    if (localrv != null)
      i = 0 + a.a.a.a.bs(1, this.fzx.ns());
    if (this.fMZ != null)
      i += a.a.a.a.bs(2, this.fMZ.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lt
 * JD-Core Version:    0.6.2
 */