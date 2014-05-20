package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ls extends com.tencent.mm.am.a
{
  public int fAC;
  public LinkedList fAD = new LinkedList();

  public static boolean a(a.a.a.a.a parama, ls paramls, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramls.fAC = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      lr locallr = new lr();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = lr.a(locala, locallr, a(locala)));
      paramls.fAD.add(locallr);
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
 * Qualified Name:     com.tencent.mm.protocal.a.ls
 * JD-Core Version:    0.6.2
 */