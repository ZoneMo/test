package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class rp extends com.tencent.mm.am.a
{
  public int fRc;
  public LinkedList fTS = new LinkedList();

  public static boolean a(a.a.a.a.a parama, rp paramrp, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramrp.fRc = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      ro localro = new ro();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = ro.a(locala, localro, a(locala)));
      paramrp.fTS.add(localro);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fRc);
    parama.c(2, 8, this.fTS);
  }

  public final rp bK(byte[] paramArrayOfByte)
  {
    this.fTS.clear();
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    return this;
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fRc) + a.a.a.a.b(2, 8, this.fTS);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rp
 * JD-Core Version:    0.6.2
 */