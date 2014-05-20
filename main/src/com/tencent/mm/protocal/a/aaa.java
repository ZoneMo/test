package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class aaa extends com.tencent.mm.am.a
{
  public aac fZI;
  public aac fZJ;
  public int gag;
  public zo gah;

  public static boolean a(a.a.a.a.a parama, aaa paramaaa, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        aac localaac2 = new aac();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = aac.a(locala3, localaac2, a(locala3)));
        paramaaa.fZI = localaac2;
      }
      return true;
    case 2:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        aac localaac1 = new aac();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = aac.a(locala2, localaac1, a(locala2)));
        paramaaa.fZJ = localaac1;
      }
      return true;
    case 3:
      paramaaa.gag = parama.aPQ();
      return true;
    case 4:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      zo localzo = new zo();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = zo.a(locala1, localzo, a(locala1)));
      paramaaa.gah = localzo;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fZI == null) || (this.fZJ == null))
      throw new b("Not all required fields were included");
    if (this.fZI != null)
    {
      parama.bv(1, this.fZI.ns());
      this.fZI.a(parama);
    }
    if (this.fZJ != null)
    {
      parama.bv(2, this.fZJ.ns());
      this.fZJ.a(parama);
    }
    parama.by(3, this.gag);
    if (this.gah != null)
    {
      parama.bv(4, this.gah.ns());
      this.gah.a(parama);
    }
  }

  public final aaa cg(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if ((this.fZI == null) || (this.fZJ == null))
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    aac localaac = this.fZI;
    int i = 0;
    if (localaac != null)
      i = 0 + a.a.a.a.bs(1, this.fZI.ns());
    if (this.fZJ != null)
      i += a.a.a.a.bs(2, this.fZJ.ns());
    int j = i + a.a.a.a.br(3, this.gag);
    if (this.gah != null)
      j += a.a.a.a.bs(4, this.gah.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aaa
 * JD-Core Version:    0.6.2
 */