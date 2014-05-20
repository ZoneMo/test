package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class zu extends com.tencent.mm.am.a
{
  public int fAC;
  public LinkedList fAD = new LinkedList();

  public static boolean a(a.a.a.a.a parama, zu paramzu, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramzu.fAC = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      zt localzt = new zt();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = zt.a(locala, localzt, a(locala)));
      paramzu.fAD.add(localzt);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAC);
    parama.c(2, 8, this.fAD);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fAC) + a.a.a.a.b(2, 8, this.fAD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zu
 * JD-Core Version:    0.6.2
 */