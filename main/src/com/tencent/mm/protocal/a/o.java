package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class o extends com.tencent.mm.am.a
{
  public y fzF;
  public LinkedList fzG = new LinkedList();
  public String fzH;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzF == null)
      throw new b("Not all required fields were included");
    if (this.fzF != null)
    {
      parama.bv(1, this.fzF.ns());
      this.fzF.a(parama);
    }
    parama.c(2, 8, this.fzG);
    if (this.fzH != null)
      parama.A(3, this.fzH);
  }

  public final o aF(byte[] paramArrayOfByte)
  {
    this.fzG.clear();
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      int j;
      switch (i)
      {
      default:
        j = 0;
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          y localy = new y();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = y.a(locala3, localy, a(locala3)));
          this.fzF = localy;
        }
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          ln localln = new ln();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = ln.a(locala2, localln, a(locala2)));
          this.fzG.add(localln);
        }
        j = 1;
        continue;
        this.fzH = locala1.aPS();
        j = 1;
      }
    }
    if (this.fzF == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    y localy = this.fzF;
    int i = 0;
    if (localy != null)
      i = 0 + a.a.a.a.bs(1, this.fzF.ns());
    int j = i + a.a.a.a.b(2, 8, this.fzG);
    if (this.fzH != null)
      j += a.a.a.a.z(3, this.fzH);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.o
 * JD-Core Version:    0.6.2
 */