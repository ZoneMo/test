package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class qp extends com.tencent.mm.am.a
{
  public int fAC;
  public int fLX;
  public LinkedList fTf = new LinkedList();

  public static boolean a(a.a.a.a.a parama, qp paramqp, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqp.fLX = parama.aPQ();
      return true;
    case 2:
      paramqp.fAC = parama.aPQ();
      return true;
    case 3:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      qo localqo = new qo();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = qo.a(locala, localqo, a(locala)));
      paramqp.fTf.add(localqo);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fLX);
    parama.by(2, this.fAC);
    parama.c(3, 8, this.fTf);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fLX) + a.a.a.a.br(2, this.fAC) + a.a.a.a.b(3, 8, this.fTf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qp
 * JD-Core Version:    0.6.2
 */