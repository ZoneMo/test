package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class l extends com.tencent.mm.am.a
{
  public String fzA;
  public int fzo;
  public int fzr;
  public rw fzs;
  public rw fzt;
  public int fzu;
  public rw fzv;
  public int fzw;
  public rv fzx;
  public int fzy;
  public String fzz;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fzs == null) || (this.fzt == null) || (this.fzv == null) || (this.fzx == null))
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
    parama.by(4, this.fzu);
    if (this.fzv != null)
    {
      parama.bv(5, this.fzv.ns());
      this.fzv.a(parama);
    }
    parama.by(6, this.fzr);
    parama.by(7, this.fzw);
    if (this.fzx != null)
    {
      parama.bv(8, this.fzx.ns());
      this.fzx.a(parama);
    }
    parama.by(9, this.fzy);
    if (this.fzz != null)
      parama.A(10, this.fzz);
    if (this.fzA != null)
      parama.A(11, this.fzA);
  }

  public final l aE(byte[] paramArrayOfByte)
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
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
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
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          rw localrw3 = new rw();
          a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = rw.a(locala5, localrw3, a(locala5)));
          this.fzs = localrw3;
        }
        j = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          rw localrw2 = new rw();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = rw.a(locala4, localrw2, a(locala4)));
          this.fzt = localrw2;
        }
        j = 1;
        continue;
        this.fzu = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          rw localrw1 = new rw();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = rw.a(locala3, localrw1, a(locala3)));
          this.fzv = localrw1;
        }
        j = 1;
        continue;
        this.fzr = locala1.aPQ();
        j = 1;
        continue;
        this.fzw = locala1.aPQ();
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
          this.fzx = localrv;
        }
        j = 1;
        continue;
        this.fzy = locala1.aPQ();
        j = 1;
        continue;
        this.fzz = locala1.aPS();
        j = 1;
        continue;
        this.fzA = locala1.aPS();
        j = 1;
      }
    }
    if ((this.fzs == null) || (this.fzt == null) || (this.fzv == null) || (this.fzx == null))
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
    int j = i + a.a.a.a.br(4, this.fzu);
    if (this.fzv != null)
      j += a.a.a.a.bs(5, this.fzv.ns());
    int k = j + a.a.a.a.br(6, this.fzr) + a.a.a.a.br(7, this.fzw);
    if (this.fzx != null)
      k += a.a.a.a.bs(8, this.fzx.ns());
    int m = k + a.a.a.a.br(9, this.fzy);
    if (this.fzz != null)
      m += a.a.a.a.z(10, this.fzz);
    if (this.fzA != null)
      m += a.a.a.a.z(11, this.fzA);
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.l
 * JD-Core Version:    0.6.2
 */