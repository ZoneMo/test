package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class z extends com.tencent.mm.am.a
{
  public nk fAd;

  public static boolean a(a.a.a.a.a parama, z paramz, int paramInt)
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
      nk localnk = new nk();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = nk.a(locala, localnk, a(locala)));
      paramz.fAd = localnk;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fAd == null)
      throw new b("Not all required fields were included");
    if (this.fAd != null)
    {
      parama.bv(1, this.fAd.ns());
      this.fAd.a(parama);
    }
  }

  public final int ns()
  {
    nk localnk = this.fAd;
    int i = 0;
    if (localnk != null)
      i = 0 + a.a.a.a.bs(1, this.fAd.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.z
 * JD-Core Version:    0.6.2
 */