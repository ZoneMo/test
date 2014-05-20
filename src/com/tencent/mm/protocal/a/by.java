package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class by extends com.tencent.mm.am.a
{
  public int fCG;
  public int fCH;
  public int fCI;
  public LinkedList fCJ = new LinkedList();
  public LinkedList fCK = new LinkedList();

  public static boolean a(a.a.a.a.a parama, by paramby, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramby.fCG = parama.aPQ();
      return true;
    case 2:
      paramby.fCH = parama.aPQ();
      return true;
    case 5:
      paramby.fCI = parama.aPQ();
      return true;
    case 3:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        bx localbx2 = new bx();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = bx.a(locala2, localbx2, a(locala2)));
        paramby.fCJ.add(localbx2);
      }
      return true;
    case 4:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      bx localbx1 = new bx();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = bx.a(locala1, localbx1, a(locala1)));
      paramby.fCK.add(localbx1);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fCG);
    parama.by(2, this.fCH);
    parama.by(5, this.fCI);
    parama.c(3, 8, this.fCJ);
    parama.c(4, 8, this.fCK);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fCG) + a.a.a.a.br(2, this.fCH) + a.a.a.a.br(5, this.fCI) + a.a.a.a.b(3, 8, this.fCJ) + a.a.a.a.b(4, 8, this.fCK);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.by
 * JD-Core Version:    0.6.2
 */