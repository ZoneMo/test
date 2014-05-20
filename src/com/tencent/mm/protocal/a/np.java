package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class np extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public int cqq;
  public String cqr;
  public int cqs;
  public String cqx;
  public rw fEG;
  public rw fEH;
  public rw fEL;
  public int fEp;
  public rw fNa;
  public int fNp;
  public String fNq;
  public int fON;
  public rw fOO;
  public rw fOP;
  public rw fOQ;

  public static boolean a(a.a.a.a.a parama, np paramnp, int paramInt)
  {
    switch (paramInt)
    {
    case 7:
    case 8:
    default:
      return false;
    case 1:
      LinkedList localLinkedList7 = parama.oL(paramInt);
      int i8 = localLinkedList7.size();
      for (int i9 = 0; i9 < i8; i9++)
      {
        byte[] arrayOfByte7 = (byte[])localLinkedList7.get(i9);
        rw localrw7 = new rw();
        a.a.a.a.a locala7 = new a.a.a.a.a(arrayOfByte7, fxi);
        for (boolean bool7 = true; bool7; bool7 = rw.a(locala7, localrw7, a(locala7)));
        paramnp.fEL = localrw7;
      }
      return true;
    case 2:
      paramnp.fON = parama.aPQ();
      return true;
    case 3:
      LinkedList localLinkedList6 = parama.oL(paramInt);
      int i6 = localLinkedList6.size();
      for (int i7 = 0; i7 < i6; i7++)
      {
        byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i7);
        rw localrw6 = new rw();
        a.a.a.a.a locala6 = new a.a.a.a.a(arrayOfByte6, fxi);
        for (boolean bool6 = true; bool6; bool6 = rw.a(locala6, localrw6, a(locala6)));
        paramnp.fNa = localrw6;
      }
      return true;
    case 4:
      LinkedList localLinkedList5 = parama.oL(paramInt);
      int i4 = localLinkedList5.size();
      for (int i5 = 0; i5 < i4; i5++)
      {
        byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i5);
        rw localrw5 = new rw();
        a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte5, fxi);
        for (boolean bool5 = true; bool5; bool5 = rw.a(locala5, localrw5, a(locala5)));
        paramnp.fEG = localrw5;
      }
      return true;
    case 5:
      LinkedList localLinkedList4 = parama.oL(paramInt);
      int i2 = localLinkedList4.size();
      for (int i3 = 0; i3 < i2; i3++)
      {
        byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i3);
        rw localrw4 = new rw();
        a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte4, fxi);
        for (boolean bool4 = true; bool4; bool4 = rw.a(locala4, localrw4, a(locala4)));
        paramnp.fEH = localrw4;
      }
      return true;
    case 6:
      paramnp.cqq = parama.aPQ();
      return true;
    case 9:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        rw localrw3 = new rw();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = rw.a(locala3, localrw3, a(locala3)));
        paramnp.fOO = localrw3;
      }
      return true;
    case 10:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rw localrw2 = new rw();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rw.a(locala2, localrw2, a(locala2)));
        paramnp.fOP = localrw2;
      }
      return true;
    case 11:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        rw localrw1 = new rw();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = rw.a(locala1, localrw1, a(locala1)));
        paramnp.fOQ = localrw1;
      }
      return true;
    case 12:
      paramnp.fEp = parama.aPQ();
      return true;
    case 13:
      paramnp.Tu = parama.aPS();
      return true;
    case 14:
      paramnp.Tv = parama.aPS();
      return true;
    case 15:
      paramnp.cqr = parama.aPS();
      return true;
    case 16:
      paramnp.cqs = parama.aPQ();
      return true;
    case 17:
      paramnp.fNp = parama.aPQ();
      return true;
    case 18:
      paramnp.fNq = parama.aPS();
      return true;
    case 19:
    }
    paramnp.cqx = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fEL == null) || (this.fNa == null) || (this.fEG == null) || (this.fEH == null) || (this.fOO == null) || (this.fOP == null) || (this.fOQ == null))
      throw new b("Not all required fields were included");
    if (this.fEL != null)
    {
      parama.bv(1, this.fEL.ns());
      this.fEL.a(parama);
    }
    parama.by(2, this.fON);
    if (this.fNa != null)
    {
      parama.bv(3, this.fNa.ns());
      this.fNa.a(parama);
    }
    if (this.fEG != null)
    {
      parama.bv(4, this.fEG.ns());
      this.fEG.a(parama);
    }
    if (this.fEH != null)
    {
      parama.bv(5, this.fEH.ns());
      this.fEH.a(parama);
    }
    parama.by(6, this.cqq);
    if (this.fOO != null)
    {
      parama.bv(9, this.fOO.ns());
      this.fOO.a(parama);
    }
    if (this.fOP != null)
    {
      parama.bv(10, this.fOP.ns());
      this.fOP.a(parama);
    }
    if (this.fOQ != null)
    {
      parama.bv(11, this.fOQ.ns());
      this.fOQ.a(parama);
    }
    parama.by(12, this.fEp);
    if (this.Tu != null)
      parama.A(13, this.Tu);
    if (this.Tv != null)
      parama.A(14, this.Tv);
    if (this.cqr != null)
      parama.A(15, this.cqr);
    parama.by(16, this.cqs);
    parama.by(17, this.fNp);
    if (this.fNq != null)
      parama.A(18, this.fNq);
    if (this.cqx != null)
      parama.A(19, this.cqx);
  }

  public final int ns()
  {
    rw localrw = this.fEL;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEL.ns());
    int j = i + a.a.a.a.br(2, this.fON);
    if (this.fNa != null)
      j += a.a.a.a.bs(3, this.fNa.ns());
    if (this.fEG != null)
      j += a.a.a.a.bs(4, this.fEG.ns());
    if (this.fEH != null)
      j += a.a.a.a.bs(5, this.fEH.ns());
    int k = j + a.a.a.a.br(6, this.cqq);
    if (this.fOO != null)
      k += a.a.a.a.bs(9, this.fOO.ns());
    if (this.fOP != null)
      k += a.a.a.a.bs(10, this.fOP.ns());
    if (this.fOQ != null)
      k += a.a.a.a.bs(11, this.fOQ.ns());
    int m = k + a.a.a.a.br(12, this.fEp);
    if (this.Tu != null)
      m += a.a.a.a.z(13, this.Tu);
    if (this.Tv != null)
      m += a.a.a.a.z(14, this.Tv);
    if (this.cqr != null)
      m += a.a.a.a.z(15, this.cqr);
    int n = m + a.a.a.a.br(16, this.cqs) + a.a.a.a.br(17, this.fNp);
    if (this.fNq != null)
      n += a.a.a.a.z(18, this.fNq);
    if (this.cqx != null)
      n += a.a.a.a.z(19, this.cqx);
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.np
 * JD-Core Version:    0.6.2
 */