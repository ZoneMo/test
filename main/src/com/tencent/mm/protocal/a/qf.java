package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class qf extends com.tencent.mm.am.a
{
  public int fAC;
  public LinkedList fAD = new LinkedList();

  public static boolean a(a.a.a.a.a parama, qf paramqf, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqf.fAC = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      qe localqe = new qe();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = qe.a(locala, localqe, a(locala)));
      paramqf.fAD.add(localqe);
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
 * Qualified Name:     com.tencent.mm.protocal.a.qf
 * JD-Core Version:    0.6.2
 */