package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class rd extends com.tencent.mm.am.a
{
  public int count;
  public LinkedList fTz = new LinkedList();
  public int timestamp;

  public static boolean a(a.a.a.a.a parama, rd paramrd, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramrd.count = parama.aPQ();
      return true;
    case 2:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        re localre = new re();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = re.a(locala, localre, a(locala)));
        paramrd.fTz.add(localre);
      }
      return true;
    case 3:
    }
    paramrd.timestamp = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.count);
    parama.c(2, 8, this.fTz);
    parama.by(3, this.timestamp);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.count) + a.a.a.a.b(2, 8, this.fTz) + a.a.a.a.br(3, this.timestamp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rd
 * JD-Core Version:    0.6.2
 */