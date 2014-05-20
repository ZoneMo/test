package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class gn extends rt
{
  public int fAC;
  public int fIM;
  public int fIN;
  public int fIR;
  public int fJd;
  public String fJe;
  public int fJf;
  public LinkedList fJg = new LinkedList();
  public String fJh;
  public String fJi;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTZ == null)
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    parama.by(2, this.fJd);
    if (this.fJe != null)
      parama.A(3, this.fJe);
    parama.by(4, this.fJf);
    parama.by(5, this.fIN);
    parama.by(6, this.fIM);
    parama.by(7, this.fAC);
    parama.c(8, 8, this.fJg);
    if (this.fJh != null)
      parama.A(11, this.fJh);
    if (this.fJi != null)
      parama.A(12, this.fJi);
    parama.by(13, this.fIR);
  }

  public final gn bb(byte[] paramArrayOfByte)
  {
    this.fJg.clear();
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      int j;
      switch (i)
      {
      case 9:
      case 10:
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
      case 11:
      case 12:
      case 13:
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
          av localav = new av();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = av.a(locala3, localav, a(locala3)));
          this.fTZ = localav;
        }
        j = 1;
        continue;
        this.fJd = locala1.aPQ();
        j = 1;
        continue;
        this.fJe = locala1.aPS();
        j = 1;
        continue;
        this.fJf = locala1.aPQ();
        j = 1;
        continue;
        this.fIN = locala1.aPQ();
        j = 1;
        continue;
        this.fIM = locala1.aPQ();
        j = 1;
        continue;
        this.fAC = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          yq localyq = new yq();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = yq.a(locala2, localyq, a(locala2)));
          this.fJg.add(localyq);
        }
        j = 1;
        continue;
        this.fJh = locala1.aPS();
        j = 1;
        continue;
        this.fJi = locala1.aPS();
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
    int j = i + a.a.a.a.br(2, this.fJd);
    if (this.fJe != null)
      j += a.a.a.a.z(3, this.fJe);
    int k = j + a.a.a.a.br(4, this.fJf) + a.a.a.a.br(5, this.fIN) + a.a.a.a.br(6, this.fIM) + a.a.a.a.br(7, this.fAC) + a.a.a.a.b(8, 8, this.fJg);
    if (this.fJh != null)
      k += a.a.a.a.z(11, this.fJh);
    if (this.fJi != null)
      k += a.a.a.a.z(12, this.fJi);
    return k + a.a.a.a.br(13, this.fIR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gn
 * JD-Core Version:    0.6.2
 */