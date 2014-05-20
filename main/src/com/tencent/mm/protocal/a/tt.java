package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class tt extends rt
{
  public int fAK;
  public rv fMc;
  public float fPV;
  public int fUO;
  public rv fUP;
  public rv fUQ;
  public rv fUR;
  public rv fUS;
  public rv fUT;
  public rv fUU;
  public rv fUV;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fTZ == null) || (this.fUP == null) || (this.fUQ == null) || (this.fUR == null) || (this.fUS == null) || (this.fUT == null) || (this.fUU == null) || (this.fUV == null) || (this.fMc == null))
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    parama.by(2, this.fAK);
    parama.by(3, this.fUO);
    parama.c(4, this.fPV);
    if (this.fUP != null)
    {
      parama.bv(5, this.fUP.ns());
      this.fUP.a(parama);
    }
    if (this.fUQ != null)
    {
      parama.bv(6, this.fUQ.ns());
      this.fUQ.a(parama);
    }
    if (this.fUR != null)
    {
      parama.bv(7, this.fUR.ns());
      this.fUR.a(parama);
    }
    if (this.fUS != null)
    {
      parama.bv(8, this.fUS.ns());
      this.fUS.a(parama);
    }
    if (this.fUT != null)
    {
      parama.bv(9, this.fUT.ns());
      this.fUT.a(parama);
    }
    if (this.fUU != null)
    {
      parama.bv(10, this.fUU.ns());
      this.fUU.a(parama);
    }
    if (this.fUV != null)
    {
      parama.bv(11, this.fUV.ns());
      this.fUV.a(parama);
    }
    if (this.fMc != null)
    {
      parama.bv(12, this.fMc.ns());
      this.fMc.a(parama);
    }
  }

  public final tt bR(byte[] paramArrayOfByte)
  {
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
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList9 = locala1.oL(i);
        int i14 = localLinkedList9.size();
        for (int i15 = 0; i15 < i14; i15++)
        {
          byte[] arrayOfByte9 = (byte[])localLinkedList9.get(i15);
          av localav = new av();
          a.a.a.a.a locala10 = new a.a.a.a.a(arrayOfByte9, fxi);
          for (boolean bool9 = true; bool9; bool9 = av.a(locala10, localav, a(locala10)));
          this.fTZ = localav;
        }
        m = 1;
        continue;
        this.fAK = locala1.aPQ();
        m = 1;
        continue;
        this.fUO = locala1.aPQ();
        m = 1;
        continue;
        this.fPV = locala1.aPV();
        m = 1;
        continue;
        LinkedList localLinkedList8 = locala1.oL(i);
        int i12 = localLinkedList8.size();
        for (int i13 = 0; i13 < i12; i13++)
        {
          byte[] arrayOfByte8 = (byte[])localLinkedList8.get(i13);
          rv localrv8 = new rv();
          a.a.a.a.a locala9 = new a.a.a.a.a(arrayOfByte8, fxi);
          for (boolean bool8 = true; bool8; bool8 = rv.a(locala9, localrv8, a(locala9)));
          this.fUP = localrv8;
        }
        m = 1;
        continue;
        LinkedList localLinkedList7 = locala1.oL(i);
        int i10 = localLinkedList7.size();
        for (int i11 = 0; i11 < i10; i11++)
        {
          byte[] arrayOfByte7 = (byte[])localLinkedList7.get(i11);
          rv localrv7 = new rv();
          a.a.a.a.a locala8 = new a.a.a.a.a(arrayOfByte7, fxi);
          for (boolean bool7 = true; bool7; bool7 = rv.a(locala8, localrv7, a(locala8)));
          this.fUQ = localrv7;
        }
        m = 1;
        continue;
        LinkedList localLinkedList6 = locala1.oL(i);
        int i8 = localLinkedList6.size();
        for (int i9 = 0; i9 < i8; i9++)
        {
          byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i9);
          rv localrv6 = new rv();
          a.a.a.a.a locala7 = new a.a.a.a.a(arrayOfByte6, fxi);
          for (boolean bool6 = true; bool6; bool6 = rv.a(locala7, localrv6, a(locala7)));
          this.fUR = localrv6;
        }
        m = 1;
        continue;
        LinkedList localLinkedList5 = locala1.oL(i);
        int i6 = localLinkedList5.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i7);
          rv localrv5 = new rv();
          a.a.a.a.a locala6 = new a.a.a.a.a(arrayOfByte5, fxi);
          for (boolean bool5 = true; bool5; bool5 = rv.a(locala6, localrv5, a(locala6)));
          this.fUS = localrv5;
        }
        m = 1;
        continue;
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          rv localrv4 = new rv();
          a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = rv.a(locala5, localrv4, a(locala5)));
          this.fUT = localrv4;
        }
        m = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          rv localrv3 = new rv();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = rv.a(locala4, localrv3, a(locala4)));
          this.fUU = localrv3;
        }
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          rv localrv2 = new rv();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = rv.a(locala3, localrv2, a(locala3)));
          this.fUV = localrv2;
        }
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          rv localrv1 = new rv();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = rv.a(locala2, localrv1, a(locala2)));
          this.fMc = localrv1;
        }
        m = 1;
      }
    }
    if ((this.fTZ == null) || (this.fUP == null) || (this.fUQ == null) || (this.fUR == null) || (this.fUS == null) || (this.fUT == null) || (this.fUU == null) || (this.fUV == null) || (this.fMc == null))
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    av localav = this.fTZ;
    int i = 0;
    if (localav != null)
      i = 0 + a.a.a.a.bs(1, this.fTZ.ns());
    int j = i + a.a.a.a.br(2, this.fAK) + a.a.a.a.br(3, this.fUO);
    int k = j + a.a.a.a.oK(4);
    if (this.fUP != null)
      k += a.a.a.a.bs(5, this.fUP.ns());
    if (this.fUQ != null)
      k += a.a.a.a.bs(6, this.fUQ.ns());
    if (this.fUR != null)
      k += a.a.a.a.bs(7, this.fUR.ns());
    if (this.fUS != null)
      k += a.a.a.a.bs(8, this.fUS.ns());
    if (this.fUT != null)
      k += a.a.a.a.bs(9, this.fUT.ns());
    if (this.fUU != null)
      k += a.a.a.a.bs(10, this.fUU.ns());
    if (this.fUV != null)
      k += a.a.a.a.bs(11, this.fUV.ns());
    if (this.fMc != null)
      k += a.a.a.a.bs(12, this.fMc.ns());
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tt
 * JD-Core Version:    0.6.2
 */