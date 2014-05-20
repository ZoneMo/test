package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class pr extends com.tencent.mm.am.a
{
  public String Th;
  public String fFC;
  public int fFT;
  public int fGp;
  public int fSd;
  public rv fSe;
  public rv fzU;

  public static boolean a(a.a.a.a.a parama, pr parampr, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parampr.fGp = parama.aPQ();
      return true;
    case 2:
      parampr.fFT = parama.aPQ();
      return true;
    case 3:
      parampr.Th = parama.aPS();
      return true;
    case 4:
      parampr.fSd = parama.aPQ();
      return true;
    case 5:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rv localrv2 = new rv();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rv.a(locala2, localrv2, a(locala2)));
        parampr.fzU = localrv2;
      }
      return true;
    case 6:
      parampr.fFC = parama.aPS();
      return true;
    case 7:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      rv localrv1 = new rv();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = rv.a(locala1, localrv1, a(locala1)));
      parampr.fSe = localrv1;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fGp);
    parama.by(2, this.fFT);
    if (this.Th != null)
      parama.A(3, this.Th);
    parama.by(4, this.fSd);
    if (this.fzU != null)
    {
      parama.bv(5, this.fzU.ns());
      this.fzU.a(parama);
    }
    if (this.fFC != null)
      parama.A(6, this.fFC);
    if (this.fSe != null)
    {
      parama.bv(7, this.fSe.ns());
      this.fSe.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fGp) + a.a.a.a.br(2, this.fFT);
    if (this.Th != null)
      i += a.a.a.a.z(3, this.Th);
    int j = i + a.a.a.a.br(4, this.fSd);
    if (this.fzU != null)
      j += a.a.a.a.bs(5, this.fzU.ns());
    if (this.fFC != null)
      j += a.a.a.a.z(6, this.fFC);
    if (this.fSe != null)
      j += a.a.a.a.bs(7, this.fSe.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pr
 * JD-Core Version:    0.6.2
 */