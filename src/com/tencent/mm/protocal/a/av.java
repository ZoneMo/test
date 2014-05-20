package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class av extends com.tencent.mm.am.a
{
  public int fAY;
  public rw fAZ;

  public static boolean a(a.a.a.a.a parama, av paramav, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramav.fAY = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      rw localrw = new rw();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = rw.a(locala, localrw, a(locala)));
      paramav.fAZ = localrw;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAZ == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fAY);
    if (this.fAZ != null)
    {
      parama.bv(2, this.fAZ.ns());
      this.fAZ.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAY);
    if (this.fAZ != null)
      i += a.a.a.a.bs(2, this.fAZ.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.av
 * JD-Core Version:    0.6.2
 */