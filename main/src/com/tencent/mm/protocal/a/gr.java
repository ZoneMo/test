package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class gr extends rt
{
  public String fIL;
  public int fIM;
  public int fIN;
  public int fIR;
  public String fJh;
  public String fJi;
  public String fJj;
  public int fJk;
  public LinkedList fJl = new LinkedList();
  public int fJm;
  public LinkedList fJn = new LinkedList();
  public int fJo;
  public LinkedList fJp = new LinkedList();
  public int fJq;
  public LinkedList fJr = new LinkedList();
  public int fJs;
  public LinkedList fJt = new LinkedList();
  public String fJu;
  public String fJv;
  public String fJw;

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
    if (this.fJj != null)
      parama.A(3, this.fJj);
    parama.by(4, this.fIM);
    if (this.fIL != null)
      parama.A(5, this.fIL);
    parama.by(6, this.fJk);
    parama.c(7, 8, this.fJl);
    parama.by(8, this.fJm);
    parama.c(9, 8, this.fJn);
    parama.by(10, this.fJo);
    parama.c(11, 8, this.fJp);
    parama.by(12, this.fJq);
    parama.c(13, 8, this.fJr);
    if (this.fJh != null)
      parama.A(14, this.fJh);
    if (this.fJi != null)
      parama.A(15, this.fJi);
    parama.by(16, this.fIR);
    parama.by(17, this.fJs);
    parama.c(18, 8, this.fJt);
    if (this.fJu != null)
      parama.A(19, this.fJu);
    if (this.fJv != null)
      parama.A(20, this.fJv);
    if (this.fJw != null)
      parama.A(21, this.fJw);
  }

  public final gr bf(byte[] paramArrayOfByte)
  {
    this.fJl.clear();
    this.fJn.clear();
    this.fJp.clear();
    this.fJr.clear();
    this.fJt.clear();
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
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList6 = locala1.oL(i);
        int i8 = localLinkedList6.size();
        for (int i9 = 0; i9 < i8; i9++)
        {
          byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i9);
          av localav = new av();
          a.a.a.a.a locala7 = new a.a.a.a.a(arrayOfByte6, fxi);
          for (boolean bool6 = true; bool6; bool6 = av.a(locala7, localav, a(locala7)));
          this.fTZ = localav;
        }
        j = 1;
        continue;
        this.fIN = locala1.aPQ();
        j = 1;
        continue;
        this.fJj = locala1.aPS();
        j = 1;
        continue;
        this.fIM = locala1.aPQ();
        j = 1;
        continue;
        this.fIL = locala1.aPS();
        j = 1;
        continue;
        this.fJk = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList5 = locala1.oL(i);
        int i6 = localLinkedList5.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i7);
          yr localyr = new yr();
          a.a.a.a.a locala6 = new a.a.a.a.a(arrayOfByte5, fxi);
          for (boolean bool5 = true; bool5; bool5 = yr.a(locala6, localyr, a(locala6)));
          this.fJl.add(localyr);
        }
        j = 1;
        continue;
        this.fJm = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          yt localyt = new yt();
          a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = yt.a(locala5, localyt, a(locala5)));
          this.fJn.add(localyt);
        }
        j = 1;
        continue;
        this.fJo = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          hc localhc = new hc();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = hc.a(locala4, localhc, a(locala4)));
          this.fJp.add(localhc);
        }
        j = 1;
        continue;
        this.fJq = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          gg localgg = new gg();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = gg.a(locala3, localgg, a(locala3)));
          this.fJr.add(localgg);
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
        continue;
        this.fJs = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          rw localrw = new rw();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = rw.a(locala2, localrw, a(locala2)));
          this.fJt.add(localrw);
        }
        j = 1;
        continue;
        this.fJu = locala1.aPS();
        j = 1;
        continue;
        this.fJv = locala1.aPS();
        j = 1;
        continue;
        this.fJw = locala1.aPS();
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
    int j = i + a.a.a.a.br(2, this.fIN);
    if (this.fJj != null)
      j += a.a.a.a.z(3, this.fJj);
    int k = j + a.a.a.a.br(4, this.fIM);
    if (this.fIL != null)
      k += a.a.a.a.z(5, this.fIL);
    int m = k + a.a.a.a.br(6, this.fJk) + a.a.a.a.b(7, 8, this.fJl) + a.a.a.a.br(8, this.fJm) + a.a.a.a.b(9, 8, this.fJn) + a.a.a.a.br(10, this.fJo) + a.a.a.a.b(11, 8, this.fJp) + a.a.a.a.br(12, this.fJq) + a.a.a.a.b(13, 8, this.fJr);
    if (this.fJh != null)
      m += a.a.a.a.z(14, this.fJh);
    if (this.fJi != null)
      m += a.a.a.a.z(15, this.fJi);
    int n = m + a.a.a.a.br(16, this.fIR) + a.a.a.a.br(17, this.fJs) + a.a.a.a.b(18, 8, this.fJt);
    if (this.fJu != null)
      n += a.a.a.a.z(19, this.fJu);
    if (this.fJv != null)
      n += a.a.a.a.z(20, this.fJv);
    if (this.fJw != null)
      n += a.a.a.a.z(21, this.fJw);
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gr
 * JD-Core Version:    0.6.2
 */