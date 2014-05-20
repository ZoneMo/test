package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class uf extends com.tencent.mm.am.a
{
  public int fUZ;
  public LinkedList fVa = new LinkedList();

  public static boolean a(a.a.a.a.a parama, uf paramuf, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramuf.fUZ = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      wb localwb = new wb();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = wb.a(locala, localwb, a(locala)));
      paramuf.fVa.add(localwb);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fUZ);
    parama.c(2, 8, this.fVa);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fUZ) + a.a.a.a.b(2, 8, this.fVa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.uf
 * JD-Core Version:    0.6.2
 */