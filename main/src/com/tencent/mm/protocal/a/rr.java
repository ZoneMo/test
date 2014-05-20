package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class rr extends rt
{
  public int fAC;
  public String fCZ;
  public LinkedList fTV = new LinkedList();
  public int fTW;
  public xd fTX;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    parama.by(2, this.fAC);
    parama.c(3, 8, this.fTV);
    if (this.fCZ != null)
      parama.A(4, this.fCZ);
    parama.by(5, this.fTW);
    if (this.fTX != null)
    {
      parama.bv(6, this.fTX.ns());
      this.fTX.a(parama);
    }
  }

  public final rr bL(byte[] paramArrayOfByte)
  {
    this.fTV.clear();
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
      case 6:
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          av localav = new av();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = av.a(locala4, localav, a(locala4)));
          this.fTZ = localav;
        }
        m = 1;
        continue;
        this.fAC = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          yv localyv = new yv();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = yv.a(locala3, localyv, a(locala3)));
          this.fTV.add(localyv);
        }
        m = 1;
        continue;
        this.fCZ = locala1.aPS();
        m = 1;
        continue;
        this.fTW = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          xd localxd = new xd();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = xd.a(locala2, localxd, a(locala2)));
          this.fTX = localxd;
        }
        m = 1;
      }
    }
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    av localav = this.fTZ;
    int i = 0;
    if (localav != null)
      i = 0 + a.a.a.a.bs(1, this.fTZ.ns());
    int j = i + a.a.a.a.br(2, this.fAC) + a.a.a.a.b(3, 8, this.fTV);
    if (this.fCZ != null)
      j += a.a.a.a.z(4, this.fCZ);
    int k = j + a.a.a.a.br(5, this.fTW);
    if (this.fTX != null)
      k += a.a.a.a.bs(6, this.fTX.ns());
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rr
 * JD-Core Version:    0.6.2
 */