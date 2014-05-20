package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class ae extends com.tencent.mm.am.a
{
  public int dGR;
  public int fAA;
  public int fAB;
  public int fAu;
  public int fAv;
  public int fAw;
  public LinkedList fAx = new LinkedList();
  public LinkedList fAy = new LinkedList();
  public rv fAz;
  public String fzT;
  public int fzo;
  public rw fzs;
  public rw fzt;
  public rw fzv;
  public String fzz;

  public static boolean a(a.a.a.a.a parama, ae paramae, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramae.dGR = parama.aPQ();
      return true;
    case 2:
      paramae.fzT = parama.aPS();
      return true;
    case 3:
      LinkedList localLinkedList6 = parama.oL(paramInt);
      int i6 = localLinkedList6.size();
      for (int i7 = 0; i7 < i6; i7++)
      {
        byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i7);
        rw localrw4 = new rw();
        a.a.a.a.a locala6 = new a.a.a.a.a(arrayOfByte6, fxi);
        for (boolean bool6 = true; bool6; bool6 = rw.a(locala6, localrw4, a(locala6)));
        paramae.fzs = localrw4;
      }
      return true;
    case 4:
      LinkedList localLinkedList5 = parama.oL(paramInt);
      int i4 = localLinkedList5.size();
      for (int i5 = 0; i5 < i4; i5++)
      {
        byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i5);
        rw localrw3 = new rw();
        a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte5, fxi);
        for (boolean bool5 = true; bool5; bool5 = rw.a(locala5, localrw3, a(locala5)));
        paramae.fzt = localrw3;
      }
      return true;
    case 5:
      LinkedList localLinkedList4 = parama.oL(paramInt);
      int i2 = localLinkedList4.size();
      for (int i3 = 0; i3 < i2; i3++)
      {
        byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i3);
        rw localrw2 = new rw();
        a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte4, fxi);
        for (boolean bool4 = true; bool4; bool4 = rw.a(locala4, localrw2, a(locala4)));
        paramae.fzv = localrw2;
      }
      return true;
    case 6:
      paramae.fAu = parama.aPQ();
      return true;
    case 7:
      paramae.fAv = parama.aPQ();
      return true;
    case 8:
      paramae.fzz = parama.aPS();
      return true;
    case 9:
      paramae.fzo = parama.aPQ();
      return true;
    case 10:
      paramae.fAw = parama.aPQ();
      return true;
    case 11:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        rw localrw1 = new rw();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = rw.a(locala3, localrw1, a(locala3)));
        paramae.fAx.add(localrw1);
      }
      return true;
    case 12:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rx localrx = new rx();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rx.a(locala2, localrx, a(locala2)));
        paramae.fAy.add(localrx);
      }
      return true;
    case 13:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        rv localrv = new rv();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = rv.a(locala1, localrv, a(locala1)));
        paramae.fAz = localrv;
      }
      return true;
    case 14:
      paramae.fAA = parama.aPQ();
      return true;
    case 15:
    }
    paramae.fAB = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fzs == null) || (this.fzt == null) || (this.fzv == null))
      throw new b("Not all required fields were included");
    parama.by(1, this.dGR);
    if (this.fzT != null)
      parama.A(2, this.fzT);
    if (this.fzs != null)
    {
      parama.bv(3, this.fzs.ns());
      this.fzs.a(parama);
    }
    if (this.fzt != null)
    {
      parama.bv(4, this.fzt.ns());
      this.fzt.a(parama);
    }
    if (this.fzv != null)
    {
      parama.bv(5, this.fzv.ns());
      this.fzv.a(parama);
    }
    parama.by(6, this.fAu);
    parama.by(7, this.fAv);
    if (this.fzz != null)
      parama.A(8, this.fzz);
    parama.by(9, this.fzo);
    parama.by(10, this.fAw);
    parama.c(11, 8, this.fAx);
    parama.c(12, 8, this.fAy);
    if (this.fAz != null)
    {
      parama.bv(13, this.fAz.ns());
      this.fAz.a(parama);
    }
    parama.by(14, this.fAA);
    parama.by(15, this.fAB);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.dGR);
    if (this.fzT != null)
      i += a.a.a.a.z(2, this.fzT);
    if (this.fzs != null)
      i += a.a.a.a.bs(3, this.fzs.ns());
    if (this.fzt != null)
      i += a.a.a.a.bs(4, this.fzt.ns());
    if (this.fzv != null)
      i += a.a.a.a.bs(5, this.fzv.ns());
    int j = i + a.a.a.a.br(6, this.fAu) + a.a.a.a.br(7, this.fAv);
    if (this.fzz != null)
      j += a.a.a.a.z(8, this.fzz);
    int k = j + a.a.a.a.br(9, this.fzo) + a.a.a.a.br(10, this.fAw) + a.a.a.a.b(11, 8, this.fAx) + a.a.a.a.b(12, 8, this.fAy);
    if (this.fAz != null)
      k += a.a.a.a.bs(13, this.fAz.ns());
    return k + a.a.a.a.br(14, this.fAA) + a.a.a.a.br(15, this.fAB);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ae
 * JD-Core Version:    0.6.2
 */