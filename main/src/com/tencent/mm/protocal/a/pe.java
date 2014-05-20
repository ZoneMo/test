package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class pe extends com.tencent.mm.am.a
{
  public int fAY;
  public rv fIx;
  public cy fIy;
  public int fIz;
  public int fRy;
  public int fzr;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fIy == null) || (this.fIx == null))
      throw new b("Not all required fields were included");
    parama.by(1, this.fAY);
    if (this.fIy != null)
    {
      parama.bv(2, this.fIy.ns());
      this.fIy.a(parama);
    }
    parama.by(3, this.fIz);
    if (this.fIx != null)
    {
      parama.bv(4, this.fIx.ns());
      this.fIx.a(parama);
    }
    parama.by(5, this.fzr);
    parama.by(6, this.fRy);
  }

  public final pe bI(byte[] paramArrayOfByte)
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
      case 5:
      case 6:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.fAY = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          cy localcy = new cy();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = cy.a(locala3, localcy, a(locala3)));
          this.fIy = localcy;
        }
        j = 1;
        continue;
        this.fIz = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          rv localrv = new rv();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = rv.a(locala2, localrv, a(locala2)));
          this.fIx = localrv;
        }
        j = 1;
        continue;
        this.fzr = locala1.aPQ();
        j = 1;
        continue;
        this.fRy = locala1.aPQ();
        j = 1;
      }
    }
    if ((this.fIy == null) || (this.fIx == null))
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAY);
    if (this.fIy != null)
      i += a.a.a.a.bs(2, this.fIy.ns());
    int j = i + a.a.a.a.br(3, this.fIz);
    if (this.fIx != null)
      j += a.a.a.a.bs(4, this.fIx.ns());
    return j + a.a.a.a.br(5, this.fzr) + a.a.a.a.br(6, this.fRy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pe
 * JD-Core Version:    0.6.2
 */