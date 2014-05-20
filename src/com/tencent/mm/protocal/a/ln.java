package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ln extends com.tencent.mm.am.a
{
  public String Th;
  public LinkedList fEC = new LinkedList();

  public static boolean a(a.a.a.a.a parama, ln paramln, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramln.Th = parama.aPS();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      nk localnk = new nk();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = nk.a(locala, localnk, a(locala)));
      paramln.fEC.add(localnk);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.Th != null)
      parama.A(1, this.Th);
    parama.c(2, 8, this.fEC);
  }

  public final int ns()
  {
    String str = this.Th;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.Th);
    return i + a.a.a.a.b(2, 8, this.fEC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ln
 * JD-Core Version:    0.6.2
 */