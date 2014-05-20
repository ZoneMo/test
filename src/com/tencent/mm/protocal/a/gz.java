package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class gz extends rt
{
  public int fAC;
  public String fIL;
  public int fIM;
  public int fIN;
  public int fIR;
  public LinkedList fJg = new LinkedList();
  public int fJo;
  public LinkedList fJp = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    parama.by(2, this.fIN);
    parama.by(3, this.fIM);
    if (this.fIL != null)
      parama.A(4, this.fIL);
    parama.by(5, this.fAC);
    parama.c(6, 8, this.fJg);
    parama.by(7, this.fJo);
    parama.c(8, 8, this.fJp);
    parama.by(9, this.fIR);
  }

  public final gz bj(byte[] paramArrayOfByte)
  {
    this.fJg.clear();
    this.fJp.clear();
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
      }
      while (true)
      {
        if (j == 0)
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
        j = 1;
        continue;
        this.fIN = locala1.aPQ();
        j = 1;
        continue;
        this.fIM = locala1.aPQ();
        j = 1;
        continue;
        this.fIL = locala1.aPS();
        j = 1;
        continue;
        this.fAC = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          yq localyq = new yq();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = yq.a(locala3, localyq, a(locala3)));
          this.fJg.add(localyq);
        }
        j = 1;
        continue;
        this.fJo = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          hc localhc = new hc();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = hc.a(locala2, localhc, a(locala2)));
          this.fJp.add(localhc);
        }
        j = 1;
        continue;
        this.fIR = locala1.aPQ();
        j = 1;
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
    int j = i + a.a.a.a.br(2, this.fIN) + a.a.a.a.br(3, this.fIM);
    if (this.fIL != null)
      j += a.a.a.a.z(4, this.fIL);
    return j + a.a.a.a.br(5, this.fAC) + a.a.a.a.b(6, 8, this.fJg) + a.a.a.a.br(7, this.fJo) + a.a.a.a.b(8, 8, this.fJp) + a.a.a.a.br(9, this.fIR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gz
 * JD-Core Version:    0.6.2
 */