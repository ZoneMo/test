package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class bw extends com.tencent.mm.am.a
{
  public String fCA;
  public int fCB;
  public String fCC;
  public int fCD;
  public LinkedList fCE = new LinkedList();

  public static boolean a(a.a.a.a.a parama, bw parambw, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parambw.fCA = parama.aPS();
      return true;
    case 2:
      parambw.fCB = parama.aPQ();
      return true;
    case 3:
      parambw.fCC = parama.aPS();
      return true;
    case 4:
      parambw.fCD = parama.aPQ();
      return true;
    case 5:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      bu localbu = new bu();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = bu.a(locala, localbu, a(locala)));
      parambw.fCE.add(localbu);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fCA != null)
      parama.A(1, this.fCA);
    parama.by(2, this.fCB);
    if (this.fCC != null)
      parama.A(3, this.fCC);
    parama.by(4, this.fCD);
    parama.c(5, 8, this.fCE);
  }

  public final bw aJ(byte[] paramArrayOfByte)
  {
    this.fCE.clear();
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    return this;
  }

  public final int ns()
  {
    String str = this.fCA;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fCA);
    int j = i + a.a.a.a.br(2, this.fCB);
    if (this.fCC != null)
      j += a.a.a.a.z(3, this.fCC);
    return j + a.a.a.a.br(4, this.fCD) + a.a.a.a.b(5, 8, this.fCE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bw
 * JD-Core Version:    0.6.2
 */