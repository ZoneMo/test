package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class sm extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public int cqq;
  public String cqr;
  public int cqs;
  public String cqt;
  public String cqx;
  public String fDg;
  public String fDh;
  public rw fEI;
  public rw fNa;
  public int fNp;
  public String fNq;
  public String fNr;
  public String fNs;
  public int fNt;
  public dl fNw;

  public static boolean a(a.a.a.a.a parama, sm paramsm, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        rw localrw2 = new rw();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = rw.a(locala3, localrw2, a(locala3)));
        paramsm.fEI = localrw2;
      }
      return true;
    case 2:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rw localrw1 = new rw();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rw.a(locala2, localrw1, a(locala2)));
        paramsm.fNa = localrw1;
      }
      return true;
    case 3:
      paramsm.cqq = parama.aPQ();
      return true;
    case 4:
      paramsm.Tu = parama.aPS();
      return true;
    case 5:
      paramsm.Tv = parama.aPS();
      return true;
    case 6:
      paramsm.cqr = parama.aPS();
      return true;
    case 7:
      paramsm.cqs = parama.aPQ();
      return true;
    case 8:
      paramsm.fNp = parama.aPQ();
      return true;
    case 9:
      paramsm.fNq = parama.aPS();
      return true;
    case 10:
      paramsm.fNr = parama.aPS();
      return true;
    case 11:
      paramsm.cqt = parama.aPS();
      return true;
    case 12:
      paramsm.fNs = parama.aPS();
      return true;
    case 13:
      paramsm.fNt = parama.aPQ();
      return true;
    case 14:
      paramsm.cqx = parama.aPS();
      return true;
    case 15:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        dl localdl = new dl();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = dl.a(locala1, localdl, a(locala1)));
        paramsm.fNw = localdl;
      }
      return true;
    case 16:
      paramsm.fDg = parama.aPS();
      return true;
    case 17:
    }
    paramsm.fDh = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fEI == null) || (this.fNa == null))
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
    parama.by(3, this.cqq);
    if (this.Tu != null)
      parama.A(4, this.Tu);
    if (this.Tv != null)
      parama.A(5, this.Tv);
    if (this.cqr != null)
      parama.A(6, this.cqr);
    parama.by(7, this.cqs);
    parama.by(8, this.fNp);
    if (this.fNq != null)
      parama.A(9, this.fNq);
    if (this.fNr != null)
      parama.A(10, this.fNr);
    if (this.cqt != null)
      parama.A(11, this.cqt);
    if (this.fNs != null)
      parama.A(12, this.fNs);
    parama.by(13, this.fNt);
    if (this.cqx != null)
      parama.A(14, this.cqx);
    if (this.fNw != null)
    {
      parama.bv(15, this.fNw.ns());
      this.fNw.a(parama);
    }
    if (this.fDg != null)
      parama.A(16, this.fDg);
    if (this.fDh != null)
      parama.A(17, this.fDh);
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    if (this.fNa != null)
      i += a.a.a.a.bs(2, this.fNa.ns());
    int j = i + a.a.a.a.br(3, this.cqq);
    if (this.Tu != null)
      j += a.a.a.a.z(4, this.Tu);
    if (this.Tv != null)
      j += a.a.a.a.z(5, this.Tv);
    if (this.cqr != null)
      j += a.a.a.a.z(6, this.cqr);
    int k = j + a.a.a.a.br(7, this.cqs) + a.a.a.a.br(8, this.fNp);
    if (this.fNq != null)
      k += a.a.a.a.z(9, this.fNq);
    if (this.fNr != null)
      k += a.a.a.a.z(10, this.fNr);
    if (this.cqt != null)
      k += a.a.a.a.z(11, this.cqt);
    if (this.fNs != null)
      k += a.a.a.a.z(12, this.fNs);
    int m = k + a.a.a.a.br(13, this.fNt);
    if (this.cqx != null)
      m += a.a.a.a.z(14, this.cqx);
    if (this.fNw != null)
      m += a.a.a.a.bs(15, this.fNw.ns());
    if (this.fDg != null)
      m += a.a.a.a.z(16, this.fDg);
    if (this.fDh != null)
      m += a.a.a.a.z(17, this.fDh);
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.sm
 * JD-Core Version:    0.6.2
 */