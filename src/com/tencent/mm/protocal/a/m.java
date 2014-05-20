package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class m extends com.tencent.mm.am.a
{
  public mu fzB;

  public static boolean a(a.a.a.a.a parama, m paramm, int paramInt)
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
      mu localmu = new mu();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = mu.a(locala, localmu, a(locala)));
      paramm.fzB = localmu;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzB != null)
    {
      parama.bv(1, this.fzB.ns());
      this.fzB.a(parama);
    }
  }

  public final int ns()
  {
    mu localmu = this.fzB;
    int i = 0;
    if (localmu != null)
      i = 0 + a.a.a.a.bs(1, this.fzB.ns());
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.m
 * JD-Core Version:    0.6.2
 */