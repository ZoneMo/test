package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class cx extends com.tencent.mm.am.a
{
  public int fDZ;
  public rv fEa;

  public static boolean a(a.a.a.a.a parama, cx paramcx, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramcx.fDZ = parama.aPQ();
      return true;
    case 2:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      rv localrv = new rv();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = rv.a(locala, localrv, a(locala)));
      paramcx.fEa = localrv;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEa == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fDZ);
    if (this.fEa != null)
    {
      parama.bv(2, this.fEa.ns());
      this.fEa.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fDZ);
    if (this.fEa != null)
      i += a.a.a.a.bs(2, this.fEa.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.cx
 * JD-Core Version:    0.6.2
 */