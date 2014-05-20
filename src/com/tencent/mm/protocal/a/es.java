package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class es extends com.tencent.mm.am.a
{
  public String ID;
  public int fAL;
  public int fAY;
  public int fEd;
  public String fFn;
  public rv fFo;

  public static boolean a(a.a.a.a.a parama, es parames, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parames.fAY = parama.aPQ();
      return true;
    case 2:
      parames.fEd = parama.aPQ();
      return true;
    case 3:
      parames.fAL = parama.aPQ();
      return true;
    case 4:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        rv localrv = new rv();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = rv.a(locala, localrv, a(locala)));
        parames.fFo = localrv;
      }
      return true;
    case 5:
      parames.fFn = parama.aPS();
      return true;
    case 6:
    }
    parames.ID = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fFo == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fAY);
    parama.by(2, this.fEd);
    parama.by(3, this.fAL);
    if (this.fFo != null)
    {
      parama.bv(4, this.fFo.ns());
      this.fFo.a(parama);
    }
    if (this.fFn != null)
      parama.A(5, this.fFn);
    if (this.ID != null)
      parama.A(6, this.ID);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAY) + a.a.a.a.br(2, this.fEd) + a.a.a.a.br(3, this.fAL);
    if (this.fFo != null)
      i += a.a.a.a.bs(4, this.fFo.ns());
    if (this.fFn != null)
      i += a.a.a.a.z(5, this.fFn);
    if (this.ID != null)
      i += a.a.a.a.z(6, this.ID);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.es
 * JD-Core Version:    0.6.2
 */