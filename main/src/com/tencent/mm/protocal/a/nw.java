package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class nw extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public int cqq;
  public String cqr;
  public int cqs;
  public String cqt;
  public int cqu;
  public int cqv;
  public String cqw;
  public String cqx;
  public String cqy;
  public String fDg;
  public String fDh;
  public rw fEG;
  public rw fEH;
  public rw fEI;
  public int fEp;
  public String fMl;
  public rw fNa;
  public int fNp;
  public String fNq;
  public String fNr;
  public String fNs;
  public int fNt;
  public vp fNv;
  public dl fNw;
  public rw fOO;
  public rw fOP;
  public rw fOQ;
  public int fOT;
  public rv fzx;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fEI == null) || (this.fNa == null) || (this.fEG == null) || (this.fEH == null) || (this.fzx == null) || (this.fOO == null) || (this.fOP == null) || (this.fOQ == null))
      throw new b("Not all required fields were included");
    if (this.fEI != null)
    {
      parama.bv(1, this.fEI.ns());
      this.fEI.a(parama);
    }
    if (this.fNa != null)
    {
      parama.bv(2, this.fNa.ns());
      this.fNa.a(parama);
    }
    if (this.fEG != null)
    {
      parama.bv(3, this.fEG.ns());
      this.fEG.a(parama);
    }
    if (this.fEH != null)
    {
      parama.bv(4, this.fEH.ns());
      this.fEH.a(parama);
    }
    parama.by(5, this.cqq);
    if (this.fzx != null)
    {
      parama.bv(6, this.fzx.ns());
      this.fzx.a(parama);
    }
    parama.by(7, this.fOT);
    if (this.fOO != null)
    {
      parama.bv(8, this.fOO.ns());
      this.fOO.a(parama);
    }
    if (this.fOP != null)
    {
      parama.bv(9, this.fOP.ns());
      this.fOP.a(parama);
    }
    if (this.fOQ != null)
    {
      parama.bv(10, this.fOQ.ns());
      this.fOQ.a(parama);
    }
    parama.by(11, this.fEp);
    if (this.Tu != null)
      parama.A(12, this.Tu);
    if (this.Tv != null)
      parama.A(13, this.Tv);
    if (this.cqr != null)
      parama.A(14, this.cqr);
    parama.by(15, this.cqs);
    parama.by(16, this.fNp);
    if (this.fNq != null)
      parama.A(17, this.fNq);
    if (this.fNr != null)
      parama.A(18, this.fNr);
    if (this.fMl != null)
      parama.A(19, this.fMl);
    if (this.fNs != null)
      parama.A(20, this.fNs);
    parama.by(21, this.fNt);
    parama.by(22, this.cqv);
    parama.by(23, this.cqu);
    if (this.cqw != null)
      parama.A(24, this.cqw);
    if (this.cqt != null)
      parama.A(25, this.cqt);
    if (this.fNv != null)
    {
      parama.bv(26, this.fNv.ns());
      this.fNv.a(parama);
    }
    if (this.cqx != null)
      parama.A(27, this.cqx);
    if (this.fDg != null)
      parama.A(28, this.fDg);
    if (this.fDh != null)
      parama.A(29, this.fDh);
    if (this.cqy != null)
      parama.A(30, this.cqy);
    if (this.fNw != null)
    {
      parama.bv(31, this.fNw.ns());
      this.fNw.a(parama);
    }
  }

  public final nw bx(byte[] paramArrayOfByte)
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
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList10 = locala1.oL(i);
        int i16 = localLinkedList10.size();
        for (int i17 = 0; i17 < i16; i17++)
        {
          byte[] arrayOfByte10 = (byte[])localLinkedList10.get(i17);
          rw localrw7 = new rw();
          a.a.a.a.a locala11 = new a.a.a.a.a(arrayOfByte10, fxi);
          for (boolean bool10 = true; bool10; bool10 = rw.a(locala11, localrw7, a(locala11)));
          this.fEI = localrw7;
        }
        m = 1;
        continue;
        LinkedList localLinkedList9 = locala1.oL(i);
        int i14 = localLinkedList9.size();
        for (int i15 = 0; i15 < i14; i15++)
        {
          byte[] arrayOfByte9 = (byte[])localLinkedList9.get(i15);
          rw localrw6 = new rw();
          a.a.a.a.a locala10 = new a.a.a.a.a(arrayOfByte9, fxi);
          for (boolean bool9 = true; bool9; bool9 = rw.a(locala10, localrw6, a(locala10)));
          this.fNa = localrw6;
        }
        m = 1;
        continue;
        LinkedList localLinkedList8 = locala1.oL(i);
        int i12 = localLinkedList8.size();
        for (int i13 = 0; i13 < i12; i13++)
        {
          byte[] arrayOfByte8 = (byte[])localLinkedList8.get(i13);
          rw localrw5 = new rw();
          a.a.a.a.a locala9 = new a.a.a.a.a(arrayOfByte8, fxi);
          for (boolean bool8 = true; bool8; bool8 = rw.a(locala9, localrw5, a(locala9)));
          this.fEG = localrw5;
        }
        m = 1;
        continue;
        LinkedList localLinkedList7 = locala1.oL(i);
        int i10 = localLinkedList7.size();
        for (int i11 = 0; i11 < i10; i11++)
        {
          byte[] arrayOfByte7 = (byte[])localLinkedList7.get(i11);
          rw localrw4 = new rw();
          a.a.a.a.a locala8 = new a.a.a.a.a(arrayOfByte7, fxi);
          for (boolean bool7 = true; bool7; bool7 = rw.a(locala8, localrw4, a(locala8)));
          this.fEH = localrw4;
        }
        m = 1;
        continue;
        this.cqq = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList6 = locala1.oL(i);
        int i8 = localLinkedList6.size();
        for (int i9 = 0; i9 < i8; i9++)
        {
          byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i9);
          rv localrv = new rv();
          a.a.a.a.a locala7 = new a.a.a.a.a(arrayOfByte6, fxi);
          for (boolean bool6 = true; bool6; bool6 = rv.a(locala7, localrv, a(locala7)));
          this.fzx = localrv;
        }
        m = 1;
        continue;
        this.fOT = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList5 = locala1.oL(i);
        int i6 = localLinkedList5.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i7);
          rw localrw3 = new rw();
          a.a.a.a.a locala6 = new a.a.a.a.a(arrayOfByte5, fxi);
          for (boolean bool5 = true; bool5; bool5 = rw.a(locala6, localrw3, a(locala6)));
          this.fOO = localrw3;
        }
        m = 1;
        continue;
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          rw localrw2 = new rw();
          a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = rw.a(locala5, localrw2, a(locala5)));
          this.fOP = localrw2;
        }
        m = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          rw localrw1 = new rw();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = rw.a(locala4, localrw1, a(locala4)));
          this.fOQ = localrw1;
        }
        m = 1;
        continue;
        this.fEp = locala1.aPQ();
        m = 1;
        continue;
        this.Tu = locala1.aPS();
        m = 1;
        continue;
        this.Tv = locala1.aPS();
        m = 1;
        continue;
        this.cqr = locala1.aPS();
        m = 1;
        continue;
        this.cqs = locala1.aPQ();
        m = 1;
        continue;
        this.fNp = locala1.aPQ();
        m = 1;
        continue;
        this.fNq = locala1.aPS();
        m = 1;
        continue;
        this.fNr = locala1.aPS();
        m = 1;
        continue;
        this.fMl = locala1.aPS();
        m = 1;
        continue;
        this.fNs = locala1.aPS();
        m = 1;
        continue;
        this.fNt = locala1.aPQ();
        m = 1;
        continue;
        this.cqv = locala1.aPQ();
        m = 1;
        continue;
        this.cqu = locala1.aPQ();
        m = 1;
        continue;
        this.cqw = locala1.aPS();
        m = 1;
        continue;
        this.cqt = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          vp localvp = new vp();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = vp.a(locala3, localvp, a(locala3)));
          this.fNv = localvp;
        }
        m = 1;
        continue;
        this.cqx = locala1.aPS();
        m = 1;
        continue;
        this.fDg = locala1.aPS();
        m = 1;
        continue;
        this.fDh = locala1.aPS();
        m = 1;
        continue;
        this.cqy = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          dl localdl = new dl();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = dl.a(locala2, localdl, a(locala2)));
          this.fNw = localdl;
        }
        m = 1;
      }
    }
    if ((this.fEI == null) || (this.fNa == null) || (this.fEG == null) || (this.fEH == null) || (this.fzx == null) || (this.fOO == null) || (this.fOP == null) || (this.fOQ == null))
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    if (this.fNa != null)
      i += a.a.a.a.bs(2, this.fNa.ns());
    if (this.fEG != null)
      i += a.a.a.a.bs(3, this.fEG.ns());
    if (this.fEH != null)
      i += a.a.a.a.bs(4, this.fEH.ns());
    int j = i + a.a.a.a.br(5, this.cqq);
    if (this.fzx != null)
      j += a.a.a.a.bs(6, this.fzx.ns());
    int k = j + a.a.a.a.br(7, this.fOT);
    if (this.fOO != null)
      k += a.a.a.a.bs(8, this.fOO.ns());
    if (this.fOP != null)
      k += a.a.a.a.bs(9, this.fOP.ns());
    if (this.fOQ != null)
      k += a.a.a.a.bs(10, this.fOQ.ns());
    int m = k + a.a.a.a.br(11, this.fEp);
    if (this.Tu != null)
      m += a.a.a.a.z(12, this.Tu);
    if (this.Tv != null)
      m += a.a.a.a.z(13, this.Tv);
    if (this.cqr != null)
      m += a.a.a.a.z(14, this.cqr);
    int n = m + a.a.a.a.br(15, this.cqs) + a.a.a.a.br(16, this.fNp);
    if (this.fNq != null)
      n += a.a.a.a.z(17, this.fNq);
    if (this.fNr != null)
      n += a.a.a.a.z(18, this.fNr);
    if (this.fMl != null)
      n += a.a.a.a.z(19, this.fMl);
    if (this.fNs != null)
      n += a.a.a.a.z(20, this.fNs);
    int i1 = n + a.a.a.a.br(21, this.fNt) + a.a.a.a.br(22, this.cqv) + a.a.a.a.br(23, this.cqu);
    if (this.cqw != null)
      i1 += a.a.a.a.z(24, this.cqw);
    if (this.cqt != null)
      i1 += a.a.a.a.z(25, this.cqt);
    if (this.fNv != null)
      i1 += a.a.a.a.bs(26, this.fNv.ns());
    if (this.cqx != null)
      i1 += a.a.a.a.z(27, this.cqx);
    if (this.fDg != null)
      i1 += a.a.a.a.z(28, this.fDg);
    if (this.fDh != null)
      i1 += a.a.a.a.z(29, this.fDh);
    if (this.cqy != null)
      i1 += a.a.a.a.z(30, this.cqy);
    if (this.fNw != null)
      i1 += a.a.a.a.bs(31, this.fNw.ns());
    return i1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nw
 * JD-Core Version:    0.6.2
 */