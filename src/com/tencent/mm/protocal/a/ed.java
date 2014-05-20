package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class ed extends com.tencent.mm.am.a
{
  public int fES;
  public ee fET;
  public int fEU;
  public ee fEV;

  public static boolean a(a.a.a.a.a parama, ed paramed, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramed.fES = parama.aPQ();
      return true;
    case 2:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        ee localee2 = new ee();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = ee.a(locala2, localee2, a(locala2)));
        paramed.fET = localee2;
      }
      return true;
    case 3:
      paramed.fEU = parama.aPQ();
      return true;
    case 4:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      ee localee1 = new ee();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = ee.a(locala1, localee1, a(locala1)));
      paramed.fEV = localee1;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fET == null) || (this.fEV == null))
      throw new b("Not all required fields were included");
    parama.by(1, this.fES);
    if (this.fET != null)
    {
      parama.bv(2, this.fET.ns());
      this.fET.a(parama);
    }
    parama.by(3, this.fEU);
    if (this.fEV != null)
    {
      parama.bv(4, this.fEV.ns());
      this.fEV.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fES);
    if (this.fET != null)
      i += a.a.a.a.bs(2, this.fET.ns());
    int j = i + a.a.a.a.br(3, this.fEU);
    if (this.fEV != null)
      j += a.a.a.a.bs(4, this.fEV.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ed
 * JD-Core Version:    0.6.2
 */