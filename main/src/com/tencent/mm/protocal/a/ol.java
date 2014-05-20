package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class ol extends com.tencent.mm.am.a
{
  public int fzo;
  public int fzr;
  public rw fzs;
  public rw fzt;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fzs == null) || (this.fzt == null))
      throw new b("Not all required fields were included");
    parama.by(1, this.fzo);
    if (this.fzs != null)
    {
      parama.bv(2, this.fzs.ns());
      this.fzs.a(parama);
    }
    if (this.fzt != null)
    {
      parama.bv(3, this.fzt.ns());
      this.fzt.a(parama);
    }
    parama.by(4, this.fzr);
  }

  public final ol bA(byte[] paramArrayOfByte)
  {
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
      case 4:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.fzo = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          rw localrw2 = new rw();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = rw.a(locala3, localrw2, a(locala3)));
          this.fzs = localrw2;
        }
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          rw localrw1 = new rw();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = rw.a(locala2, localrw1, a(locala2)));
          this.fzt = localrw1;
        }
        j = 1;
        continue;
        this.fzr = locala1.aPQ();
        j = 1;
      }
    }
    if ((this.fzs == null) || (this.fzt == null))
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fzo);
    if (this.fzs != null)
      i += a.a.a.a.bs(2, this.fzs.ns());
    if (this.fzt != null)
      i += a.a.a.a.bs(3, this.fzt.ns());
    return i + a.a.a.a.br(4, this.fzr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ol
 * JD-Core Version:    0.6.2
 */