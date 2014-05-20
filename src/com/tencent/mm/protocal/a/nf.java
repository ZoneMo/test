package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class nf extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public String cqp;
  public int cqq;
  public String cqr;
  public int cqs;
  public String cqt;
  public int cqu;
  public int cqv;
  public String cqw;
  public String cqx;
  public String cqy;
  public String fBM;
  public String fDg;
  public String fDh;
  public String fNU;
  public fo fNV;
  public vp fNv;
  public dl fNw;

  public static boolean a(a.a.a.a.a parama, nf paramnf, int paramInt)
  {
    switch (paramInt)
    {
    case 18:
    case 19:
    default:
      return false;
    case 1:
      paramnf.fBM = parama.aPS();
      return true;
    case 2:
      paramnf.fNU = parama.aPS();
      return true;
    case 3:
      paramnf.cqp = parama.aPS();
      return true;
    case 4:
      paramnf.cqq = parama.aPQ();
      return true;
    case 5:
      paramnf.Tu = parama.aPS();
      return true;
    case 6:
      paramnf.Tv = parama.aPS();
      return true;
    case 7:
      paramnf.cqr = parama.aPS();
      return true;
    case 8:
      paramnf.cqs = parama.aPQ();
      return true;
    case 9:
      paramnf.cqt = parama.aPS();
      return true;
    case 10:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        fo localfo = new fo();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = fo.a(locala3, localfo, a(locala3)));
        paramnf.fNV = localfo;
      }
      return true;
    case 11:
      paramnf.cqu = parama.aPQ();
      return true;
    case 12:
      paramnf.cqv = parama.aPQ();
      return true;
    case 13:
      paramnf.cqw = parama.aPS();
      return true;
    case 14:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        vp localvp = new vp();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = vp.a(locala2, localvp, a(locala2)));
        paramnf.fNv = localvp;
      }
      return true;
    case 15:
      paramnf.cqx = parama.aPS();
      return true;
    case 16:
      paramnf.cqy = parama.aPS();
      return true;
    case 17:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        dl localdl = new dl();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = dl.a(locala1, localdl, a(locala1)));
        paramnf.fNw = localdl;
      }
      return true;
    case 20:
      paramnf.fDg = parama.aPS();
      return true;
    case 21:
    }
    paramnf.fDh = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBM != null)
      parama.A(1, this.fBM);
    if (this.fNU != null)
      parama.A(2, this.fNU);
    if (this.cqp != null)
      parama.A(3, this.cqp);
    parama.by(4, this.cqq);
    if (this.Tu != null)
      parama.A(5, this.Tu);
    if (this.Tv != null)
      parama.A(6, this.Tv);
    if (this.cqr != null)
      parama.A(7, this.cqr);
    parama.by(8, this.cqs);
    if (this.cqt != null)
      parama.A(9, this.cqt);
    if (this.fNV != null)
    {
      parama.bv(10, this.fNV.ns());
      this.fNV.a(parama);
    }
    parama.by(11, this.cqu);
    parama.by(12, this.cqv);
    if (this.cqw != null)
      parama.A(13, this.cqw);
    if (this.fNv != null)
    {
      parama.bv(14, this.fNv.ns());
      this.fNv.a(parama);
    }
    if (this.cqx != null)
      parama.A(15, this.cqx);
    if (this.cqy != null)
      parama.A(16, this.cqy);
    if (this.fNw != null)
    {
      parama.bv(17, this.fNw.ns());
      this.fNw.a(parama);
    }
    if (this.fDg != null)
      parama.A(20, this.fDg);
    if (this.fDh != null)
      parama.A(21, this.fDh);
  }

  public final int ns()
  {
    String str = this.fBM;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fBM);
    if (this.fNU != null)
      i += a.a.a.a.z(2, this.fNU);
    if (this.cqp != null)
      i += a.a.a.a.z(3, this.cqp);
    int j = i + a.a.a.a.br(4, this.cqq);
    if (this.Tu != null)
      j += a.a.a.a.z(5, this.Tu);
    if (this.Tv != null)
      j += a.a.a.a.z(6, this.Tv);
    if (this.cqr != null)
      j += a.a.a.a.z(7, this.cqr);
    int k = j + a.a.a.a.br(8, this.cqs);
    if (this.cqt != null)
      k += a.a.a.a.z(9, this.cqt);
    if (this.fNV != null)
      k += a.a.a.a.bs(10, this.fNV.ns());
    int m = k + a.a.a.a.br(11, this.cqu) + a.a.a.a.br(12, this.cqv);
    if (this.cqw != null)
      m += a.a.a.a.z(13, this.cqw);
    if (this.fNv != null)
      m += a.a.a.a.bs(14, this.fNv.ns());
    if (this.cqx != null)
      m += a.a.a.a.z(15, this.cqx);
    if (this.cqy != null)
      m += a.a.a.a.z(16, this.cqy);
    if (this.fNw != null)
      m += a.a.a.a.bs(17, this.fNw.ns());
    if (this.fDg != null)
      m += a.a.a.a.z(20, this.fDg);
    if (this.fDh != null)
      m += a.a.a.a.z(21, this.fDh);
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nf
 * JD-Core Version:    0.6.2
 */