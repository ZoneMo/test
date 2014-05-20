package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class du extends com.tencent.mm.am.a
{
  public rw fEL;

  public static boolean a(a.a.a.a.a parama, du paramdu, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      rw localrw = new rw();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = rw.a(locala, localrw, a(locala)));
      paramdu.fEL = localrw;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEL == null)
      throw new b("Not all required fields were included");
    if (this.fEL != null)
    {
      parama.bv(1, this.fEL.ns());
      this.fEL.a(parama);
    }
  }

  public final int ns()
  {
    rw localrw = this.fEL;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEL.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.du
 * JD-Core Version:    0.6.2
 */