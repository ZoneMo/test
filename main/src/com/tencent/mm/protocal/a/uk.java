package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class uk extends com.tencent.mm.am.a
{
  public long fVl;
  public long fVm;
  public uj fVn;
  public uj fVo;
  public String fzj;

  public static boolean a(a.a.a.a.a parama, uk paramuk, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramuk.fVl = parama.aPW();
      return true;
    case 2:
      paramuk.fVm = parama.aPW();
      return true;
    case 3:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        uj localuj2 = new uj();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = uj.a(locala2, localuj2, a(locala2)));
        paramuk.fVn = localuj2;
      }
      return true;
    case 4:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        uj localuj1 = new uj();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = uj.a(locala1, localuj1, a(locala1)));
        paramuk.fVo = localuj1;
      }
      return true;
    case 5:
    }
    paramuk.fzj = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fVn == null)
      throw new b("Not all required fields were included");
    parama.k(1, this.fVl);
    parama.k(2, this.fVm);
    if (this.fVn != null)
    {
      parama.bv(3, this.fVn.ns());
      this.fVn.a(parama);
    }
    if (this.fVo != null)
    {
      parama.bv(4, this.fVo.ns());
      this.fVo.a(parama);
    }
    if (this.fzj != null)
      parama.A(5, this.fzj);
  }

  public final uk bT(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if (this.fVn == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.i(1, this.fVl) + a.a.a.a.i(2, this.fVm);
    if (this.fVn != null)
      i += a.a.a.a.bs(3, this.fVn.ns());
    if (this.fVo != null)
      i += a.a.a.a.bs(4, this.fVo.ns());
    if (this.fzj != null)
      i += a.a.a.a.z(5, this.fzj);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.uk
 * JD-Core Version:    0.6.2
 */