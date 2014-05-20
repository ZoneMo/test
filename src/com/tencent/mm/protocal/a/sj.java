package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class sj extends rt
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
  public int fKH;
  public LinkedList fKI = new LinkedList();
  public rw fNa;
  public int fNp;
  public String fNq;
  public String fNr;
  public String fNs;
  public int fNt;
  public vp fNv;
  public dl fNw;
  public rv fUm;
  public rv fzx;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fTZ == null) || (this.fEI == null) || (this.fNa == null) || (this.fEG == null) || (this.fEH == null) || (this.fzx == null))
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    if (this.fEI != null)
    {
      parama.bv(2, this.fEI.ns());
      this.fEI.a(parama);
    }
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
    if (this.fzx != null)
    {
      parama.bv(7, this.fzx.ns());
      this.fzx.a(parama);
    }
    if (this.Tu != null)
      parama.A(8, this.Tu);
    if (this.Tv != null)
      parama.A(9, this.Tv);
    if (this.cqr != null)
      parama.A(10, this.cqr);
    parama.by(11, this.cqs);
    parama.by(12, this.fNp);
    if (this.fNq != null)
      parama.A(13, this.fNq);
    if (this.fNr != null)
      parama.A(14, this.fNr);
    if (this.cqt != null)
      parama.A(15, this.cqt);
    if (this.fNs != null)
      parama.A(16, this.fNs);
    parama.by(17, this.fNt);
    parama.by(18, this.cqv);
    parama.by(19, this.cqu);
    if (this.cqw != null)
      parama.A(20, this.cqw);
    if (this.fNv != null)
    {
      parama.bv(21, this.fNv.ns());
      this.fNv.a(parama);
    }
    if (this.cqx != null)
      parama.A(22, this.cqx);
    if (this.cqy != null)
      parama.A(23, this.cqy);
    if (this.fNw != null)
    {
      parama.bv(24, this.fNw.ns());
      this.fNw.a(parama);
    }
    parama.by(25, this.fKH);
    parama.c(26, 8, this.fKI);
    if (this.fDg != null)
      parama.A(27, this.fDg);
    if (this.fDh != null)
      parama.A(28, this.fDh);
    if (this.fUm != null)
    {
      parama.bv(29, this.fUm.ns());
      this.fUm.a(parama);
    }
  }

  public final sj bP(byte[] paramArrayOfByte)
  {
    this.fKI.clear();
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
          av localav = new av();
          a.a.a.a.a locala11 = new a.a.a.a.a(arrayOfByte10, fxi);
          for (boolean bool10 = true; bool10; bool10 = av.a(locala11, localav, a(locala11)));
          this.fTZ = localav;
        }
        m = 1;
        continue;
        LinkedList localLinkedList9 = locala1.oL(i);
        int i14 = localLinkedList9.size();
        for (int i15 = 0; i15 < i14; i15++)
        {
          byte[] arrayOfByte9 = (byte[])localLinkedList9.get(i15);
          rw localrw4 = new rw();
          a.a.a.a.a locala10 = new a.a.a.a.a(arrayOfByte9, fxi);
          for (boolean bool9 = true; bool9; bool9 = rw.a(locala10, localrw4, a(locala10)));
          this.fEI = localrw4;
        }
        m = 1;
        continue;
        LinkedList localLinkedList8 = locala1.oL(i);
        int i12 = localLinkedList8.size();
        for (int i13 = 0; i13 < i12; i13++)
        {
          byte[] arrayOfByte8 = (byte[])localLinkedList8.get(i13);
          rw localrw3 = new rw();
          a.a.a.a.a locala9 = new a.a.a.a.a(arrayOfByte8, fxi);
          for (boolean bool8 = true; bool8; bool8 = rw.a(locala9, localrw3, a(locala9)));
          this.fNa = localrw3;
        }
        m = 1;
        continue;
        LinkedList localLinkedList7 = locala1.oL(i);
        int i10 = localLinkedList7.size();
        for (int i11 = 0; i11 < i10; i11++)
        {
          byte[] arrayOfByte7 = (byte[])localLinkedList7.get(i11);
          rw localrw2 = new rw();
          a.a.a.a.a locala8 = new a.a.a.a.a(arrayOfByte7, fxi);
          for (boolean bool7 = true; bool7; bool7 = rw.a(locala8, localrw2, a(locala8)));
          this.fEG = localrw2;
        }
        m = 1;
        continue;
        LinkedList localLinkedList6 = locala1.oL(i);
        int i8 = localLinkedList6.size();
        for (int i9 = 0; i9 < i8; i9++)
        {
          byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i9);
          rw localrw1 = new rw();
          a.a.a.a.a locala7 = new a.a.a.a.a(arrayOfByte6, fxi);
          for (boolean bool6 = true; bool6; bool6 = rw.a(locala7, localrw1, a(locala7)));
          this.fEH = localrw1;
        }
        m = 1;
        continue;
        this.cqq = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList5 = locala1.oL(i);
        int i6 = localLinkedList5.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i7);
          rv localrv2 = new rv();
          a.a.a.a.a locala6 = new a.a.a.a.a(arrayOfByte5, fxi);
          for (boolean bool5 = true; bool5; bool5 = rv.a(locala6, localrv2, a(locala6)));
          this.fzx = localrv2;
        }
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
        this.cqt = locala1.aPS();
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
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          vp localvp = new vp();
          a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = vp.a(locala5, localvp, a(locala5)));
          this.fNv = localvp;
        }
        m = 1;
        continue;
        this.cqx = locala1.aPS();
        m = 1;
        continue;
        this.cqy = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          dl localdl = new dl();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = dl.a(locala4, localdl, a(locala4)));
          this.fNw = localdl;
        }
        m = 1;
        continue;
        this.fKH = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          sh localsh = new sh();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = sh.a(locala3, localsh, a(locala3)));
          this.fKI.add(localsh);
        }
        m = 1;
        continue;
        this.fDg = locala1.aPS();
        m = 1;
        continue;
        this.fDh = locala1.aPS();
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
          this.fUm = localrv1;
        }
        m = 1;
      }
    }
    if ((this.fTZ == null) || (this.fEI == null) || (this.fNa == null) || (this.fEG == null) || (this.fEH == null) || (this.fzx == null))
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    av localav = this.fTZ;
    int i = 0;
    if (localav != null)
      i = 0 + a.a.a.a.bs(1, this.fTZ.ns());
    if (this.fEI != null)
      i += a.a.a.a.bs(2, this.fEI.ns());
    if (this.fNa != null)
      i += a.a.a.a.bs(3, this.fNa.ns());
    if (this.fEG != null)
      i += a.a.a.a.bs(4, this.fEG.ns());
    if (this.fEH != null)
      i += a.a.a.a.bs(5, this.fEH.ns());
    int j = i + a.a.a.a.br(6, this.cqq);
    if (this.fzx != null)
      j += a.a.a.a.bs(7, this.fzx.ns());
    if (this.Tu != null)
      j += a.a.a.a.z(8, this.Tu);
    if (this.Tv != null)
      j += a.a.a.a.z(9, this.Tv);
    if (this.cqr != null)
      j += a.a.a.a.z(10, this.cqr);
    int k = j + a.a.a.a.br(11, this.cqs) + a.a.a.a.br(12, this.fNp);
    if (this.fNq != null)
      k += a.a.a.a.z(13, this.fNq);
    if (this.fNr != null)
      k += a.a.a.a.z(14, this.fNr);
    if (this.cqt != null)
      k += a.a.a.a.z(15, this.cqt);
    if (this.fNs != null)
      k += a.a.a.a.z(16, this.fNs);
    int m = k + a.a.a.a.br(17, this.fNt) + a.a.a.a.br(18, this.cqv) + a.a.a.a.br(19, this.cqu);
    if (this.cqw != null)
      m += a.a.a.a.z(20, this.cqw);
    if (this.fNv != null)
      m += a.a.a.a.bs(21, this.fNv.ns());
    if (this.cqx != null)
      m += a.a.a.a.z(22, this.cqx);
    if (this.cqy != null)
      m += a.a.a.a.z(23, this.cqy);
    if (this.fNw != null)
      m += a.a.a.a.bs(24, this.fNw.ns());
    int n = m + a.a.a.a.br(25, this.fKH) + a.a.a.a.b(26, 8, this.fKI);
    if (this.fDg != null)
      n += a.a.a.a.z(27, this.fDg);
    if (this.fDh != null)
      n += a.a.a.a.z(28, this.fDh);
    if (this.fUm != null)
      n += a.a.a.a.bs(29, this.fUm.ns());
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sj
 * JD-Core Version:    0.6.2
 */