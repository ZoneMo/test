package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class qr extends com.tencent.mm.am.a
{
  public int fAC;
  public LinkedList fTh = new LinkedList();

  public static boolean a(a.a.a.a.a parama, qr paramqr, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqr.fAC = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      qq localqq = new qq();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = qq.a(locala, localqq, a(locala)));
      paramqr.fTh.add(localqq);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAC);
    parama.c(2, 8, this.fTh);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fAC) + a.a.a.a.b(2, 8, this.fTh);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qr
 * JD-Core Version:    0.6.2
 */