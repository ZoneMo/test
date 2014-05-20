package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class dg extends com.tencent.mm.am.a
{
  public String bMa;
  public String fEA;
  public int fEB;
  public LinkedList fEC = new LinkedList();
  public String fyI;

  public static boolean a(a.a.a.a.a parama, dg paramdg, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramdg.fEA = parama.aPS();
      return true;
    case 2:
      paramdg.fEB = parama.aPQ();
      return true;
    case 3:
      paramdg.bMa = parama.aPS();
      return true;
    case 4:
      paramdg.fyI = parama.aPS();
      return true;
    case 5:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      nk localnk = new nk();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = nk.a(locala, localnk, a(locala)));
      paramdg.fEC.add(localnk);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEA != null)
      parama.A(1, this.fEA);
    parama.by(2, this.fEB);
    if (this.bMa != null)
      parama.A(3, this.bMa);
    if (this.fyI != null)
      parama.A(4, this.fyI);
    parama.c(5, 8, this.fEC);
  }

  public final int ns()
  {
    String str = this.fEA;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fEA);
    int j = i + a.a.a.a.br(2, this.fEB);
    if (this.bMa != null)
      j += a.a.a.a.z(3, this.bMa);
    if (this.fyI != null)
      j += a.a.a.a.z(4, this.fyI);
    return j + a.a.a.a.b(5, 8, this.fEC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dg
 * JD-Core Version:    0.6.2
 */