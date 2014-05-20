package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class yq extends com.tencent.mm.am.a
{
  public int fJd;
  public int fJf;
  public yr fYT;

  public static boolean a(a.a.a.a.a parama, yq paramyq, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        yr localyr = new yr();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = yr.a(locala, localyr, a(locala)));
        paramyq.fYT = localyr;
      }
      return true;
    case 2:
      paramyq.fJd = parama.aPQ();
      return true;
    case 3:
    }
    paramyq.fJf = parama.aPQ();
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
    parama.by(2, this.fJd);
    parama.by(3, this.fJf);
  }

  public final int ns()
  {
    yr localyr = this.fYT;
    int i = 0;
    if (localyr != null)
      i = 0 + a.a.a.a.bs(1, this.fYT.ns());
    return i + a.a.a.a.br(2, this.fJd) + a.a.a.a.br(3, this.fJf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yq
 * JD-Core Version:    0.6.2
 */