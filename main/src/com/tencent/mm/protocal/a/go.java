package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class go extends rs
{
  public int fAC;
  public LinkedList fBd = new LinkedList();
  public int fIK;
  public String fyR;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTY != null)
    {
      parama.bv(1, this.fTY.ns());
      this.fTY.a(parama);
    }
    if (this.fyR != null)
      parama.A(2, this.fyR);
    parama.by(3, this.fIK);
    parama.by(4, this.fAC);
    parama.c(5, 8, this.fBd);
  }

  public final go bc(byte[] paramArrayOfByte)
  {
    this.fBd.clear();
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      int m;
      switch (i)
      {
      default:
        m = 0;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          au localau = new au();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = au.a(locala3, localau, a(locala3)));
          this.fTY = localau;
        }
        m = 1;
        continue;
        this.fyR = locala1.aPS();
        m = 1;
        continue;
        this.fIK = locala1.aPQ();
        m = 1;
        continue;
        this.fAC = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          rw localrw = new rw();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = rw.a(locala2, localrw, a(locala2)));
          this.fBd.add(localrw);
        }
        m = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    au localau = this.fTY;
    int i = 0;
    if (localau != null)
      i = 0 + a.a.a.a.bs(1, this.fTY.ns());
    if (this.fyR != null)
      i += a.a.a.a.z(2, this.fyR);
    return i + a.a.a.a.br(3, this.fIK) + a.a.a.a.br(4, this.fAC) + a.a.a.a.b(5, 8, this.fBd);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.go
 * JD-Core Version:    0.6.2
 */