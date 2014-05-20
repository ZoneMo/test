package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ce extends com.tencent.mm.am.a
{
  public LinkedList fDc = new LinkedList();
  public int fDd;
  public int fzc;

  public static boolean a(a.a.a.a.a parama, ce paramce, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramce.fzc = parama.aPQ();
      return true;
    case 2:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        cf localcf = new cf();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = cf.a(locala, localcf, a(locala)));
        paramce.fDc.add(localcf);
      }
      return true;
    case 3:
    }
    paramce.fDd = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fzc);
    parama.c(2, 8, this.fDc);
    parama.by(3, this.fDd);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fzc) + a.a.a.a.b(2, 8, this.fDc) + a.a.a.a.br(3, this.fDd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ce
 * JD-Core Version:    0.6.2
 */