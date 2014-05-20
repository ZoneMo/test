package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class aac extends com.tencent.mm.am.a
{
  public int dGR;
  public rv fAz;

  public static boolean a(a.a.a.a.a parama, aac paramaac, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramaac.dGR = parama.aPQ();
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
      paramaac.fAz = localrv;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAz == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.dGR);
    if (this.fAz != null)
    {
      parama.bv(2, this.fAz.ns());
      this.fAz.a(parama);
    }
  }

  public final aac ch(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if (this.fAz == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.dGR);
    if (this.fAz != null)
      i += a.a.a.a.bs(2, this.fAz.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aac
 * JD-Core Version:    0.6.2
 */