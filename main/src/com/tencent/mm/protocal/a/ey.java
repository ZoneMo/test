package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ey extends com.tencent.mm.am.a
{
  public int fAC;
  public LinkedList fAD = new LinkedList();
  public String fFA;

  public static boolean a(a.a.a.a.a parama, ey paramey, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramey.fFA = parama.aPS();
      return true;
    case 2:
      paramey.fAC = parama.aPQ();
      return true;
    case 3:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      ml localml = new ml();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = ml.a(locala, localml, a(locala)));
      paramey.fAD.add(localml);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fFA != null)
      parama.A(1, this.fFA);
    parama.by(2, this.fAC);
    parama.c(3, 8, this.fAD);
  }

  public final int ns()
  {
    String str = this.fFA;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fFA);
    return i + a.a.a.a.br(2, this.fAC) + a.a.a.a.b(3, 8, this.fAD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ey
 * JD-Core Version:    0.6.2
 */