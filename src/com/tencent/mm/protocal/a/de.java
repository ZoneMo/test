package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class de extends com.tencent.mm.am.a
{
  public int fEd;
  public int fEy;
  public rv fEz;

  public static boolean a(a.a.a.a.a parama, de paramde, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramde.fEd = parama.aPQ();
      return true;
    case 2:
      paramde.fEy = parama.aPQ();
      return true;
    case 3:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      rv localrv = new rv();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = rv.a(locala, localrv, a(locala)));
      paramde.fEz = localrv;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEz == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fEd);
    parama.by(2, this.fEy);
    if (this.fEz != null)
    {
      parama.bv(3, this.fEz.ns());
      this.fEz.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fEd) + a.a.a.a.br(2, this.fEy);
    if (this.fEz != null)
      i += a.a.a.a.bs(3, this.fEz.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.de
 * JD-Core Version:    0.6.2
 */