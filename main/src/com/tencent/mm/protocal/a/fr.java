package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class fr extends com.tencent.mm.am.a
{
  public long fGx;
  public long fGy;
  public LinkedList fGz = new LinkedList();

  public static boolean a(a.a.a.a.a parama, fr paramfr, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfr.fGx = parama.aPW();
      return true;
    case 2:
      paramfr.fGy = parama.aPW();
      return true;
    case 3:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      xc localxc = new xc();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = xc.a(locala, localxc, a(locala)));
      paramfr.fGz.add(localxc);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.k(1, this.fGx);
    parama.k(2, this.fGy);
    parama.c(3, 8, this.fGz);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.i(1, this.fGx) + a.a.a.a.i(2, this.fGy) + a.a.a.a.b(3, 8, this.fGz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fr
 * JD-Core Version:    0.6.2
 */