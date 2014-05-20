package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class yt extends com.tencent.mm.am.a
{
  public yr fYT;

  public static boolean a(a.a.a.a.a parama, yt paramyt, int paramInt)
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
      yr localyr = new yr();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = yr.a(locala, localyr, a(locala)));
      paramyt.fYT = localyr;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fYT == null)
      throw new b("Not all required fields were included");
    if (this.fYT != null)
    {
      parama.bv(1, this.fYT.ns());
      this.fYT.a(parama);
    }
  }

  public final int ns()
  {
    yr localyr = this.fYT;
    int i = 0;
    if (localyr != null)
      i = 0 + a.a.a.a.bs(1, this.fYT.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yt
 * JD-Core Version:    0.6.2
 */