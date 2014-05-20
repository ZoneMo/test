package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class zo extends com.tencent.mm.am.a
{
  public int fDP;
  public LinkedList fZP = new LinkedList();

  public static boolean a(a.a.a.a.a parama, zo paramzo, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramzo.fDP = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      zn localzn = new zn();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = zn.a(locala, localzn, a(locala)));
      paramzo.fZP.add(localzn);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fDP);
    parama.c(2, 8, this.fZP);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fDP) + a.a.a.a.b(2, 8, this.fZP);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zo
 * JD-Core Version:    0.6.2
 */