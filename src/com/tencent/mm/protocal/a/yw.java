package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class yw extends com.tencent.mm.am.a
{
  public String fEA;
  public int fZj;
  public rv fZk;
  public rv fZl;

  public static boolean a(a.a.a.a.a parama, yw paramyw, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramyw.fZj = parama.aPQ();
      return true;
    case 2:
      paramyw.fEA = parama.aPS();
      return true;
    case 3:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rv localrv2 = new rv();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rv.a(locala2, localrv2, a(locala2)));
        paramyw.fZk = localrv2;
      }
      return true;
    case 4:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      rv localrv1 = new rv();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = rv.a(locala1, localrv1, a(locala1)));
      paramyw.fZl = localrv1;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fZk == null) || (this.fZl == null))
      throw new b("Not all required fields were included");
    parama.by(1, this.fZj);
    if (this.fEA != null)
      parama.A(2, this.fEA);
    if (this.fZk != null)
    {
      parama.bv(3, this.fZk.ns());
      this.fZk.a(parama);
    }
    if (this.fZl != null)
    {
      parama.bv(4, this.fZl.ns());
      this.fZl.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fZj);
    if (this.fEA != null)
      i += a.a.a.a.z(2, this.fEA);
    if (this.fZk != null)
      i += a.a.a.a.bs(3, this.fZk.ns());
    if (this.fZl != null)
      i += a.a.a.a.bs(4, this.fZl.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yw
 * JD-Core Version:    0.6.2
 */