package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class mm extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public int cqq;
  public String cqr;
  public String cqt;
  public String cqx;
  public String cqy;
  public String eBo;
  public String fDe;
  public String fDg;
  public String fDh;
  public String fMl;
  public String fNo;
  public int fNp;
  public String fNq;
  public String fNr;
  public String fNs;
  public int fNt;
  public int fNu;
  public vp fNv;
  public dl fNw;
  public int fzw;

  public static boolean a(a.a.a.a.a parama, mm parammm, int paramInt)
  {
    switch (paramInt)
    {
    case 16:
    case 17:
    case 18:
    default:
      return false;
    case 1:
      parammm.eBo = parama.aPS();
      return true;
    case 2:
      parammm.fDe = parama.aPS();
      return true;
    case 3:
      parammm.Tu = parama.aPS();
      return true;
    case 4:
      parammm.Tv = parama.aPS();
      return true;
    case 5:
      parammm.cqr = parama.aPS();
      return true;
    case 6:
      parammm.fNo = parama.aPS();
      return true;
    case 7:
      parammm.cqq = parama.aPQ();
      return true;
    case 8:
      parammm.fzw = parama.aPQ();
      return true;
    case 9:
      parammm.fNp = parama.aPQ();
      return true;
    case 10:
      parammm.fNq = parama.aPS();
      return true;
    case 11:
      parammm.fMl = parama.aPS();
      return true;
    case 12:
      parammm.cqt = parama.aPS();
      return true;
    case 13:
      parammm.fNr = parama.aPS();
      return true;
    case 14:
      parammm.fNs = parama.aPS();
      return true;
    case 15:
      parammm.fNt = parama.aPQ();
      return true;
    case 19:
      parammm.fNu = parama.aPQ();
      return true;
    case 20:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        vp localvp = new vp();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = vp.a(locala2, localvp, a(locala2)));
        parammm.fNv = localvp;
      }
      return true;
    case 21:
      parammm.cqx = parama.aPS();
      return true;
    case 22:
      parammm.fDg = parama.aPS();
      return true;
    case 23:
      parammm.fDh = parama.aPS();
      return true;
    case 24:
      parammm.cqy = parama.aPS();
      return true;
    case 25:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      dl localdl = new dl();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = dl.a(locala1, localdl, a(locala1)));
      parammm.fNw = localdl;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    if (this.fDe != null)
      parama.A(2, this.fDe);
    if (this.Tu != null)
      parama.A(3, this.Tu);
    if (this.Tv != null)
      parama.A(4, this.Tv);
    if (this.cqr != null)
      parama.A(5, this.cqr);
    if (this.fNo != null)
      parama.A(6, this.fNo);
    parama.by(7, this.cqq);
    parama.by(8, this.fzw);
    parama.by(9, this.fNp);
    if (this.fNq != null)
      parama.A(10, this.fNq);
    if (this.fMl != null)
      parama.A(11, this.fMl);
    if (this.cqt != null)
      parama.A(12, this.cqt);
    if (this.fNr != null)
      parama.A(13, this.fNr);
    if (this.fNs != null)
      parama.A(14, this.fNs);
    parama.by(15, this.fNt);
    parama.by(19, this.fNu);
    if (this.fNv != null)
    {
      parama.bv(20, this.fNv.ns());
      this.fNv.a(parama);
    }
    if (this.cqx != null)
      parama.A(21, this.cqx);
    if (this.fDg != null)
      parama.A(22, this.fDg);
    if (this.fDh != null)
      parama.A(23, this.fDh);
    if (this.cqy != null)
      parama.A(24, this.cqy);
    if (this.fNw != null)
    {
      parama.bv(25, this.fNw.ns());
      this.fNw.a(parama);
    }
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    if (this.fDe != null)
      i += a.a.a.a.z(2, this.fDe);
    if (this.Tu != null)
      i += a.a.a.a.z(3, this.Tu);
    if (this.Tv != null)
      i += a.a.a.a.z(4, this.Tv);
    if (this.cqr != null)
      i += a.a.a.a.z(5, this.cqr);
    if (this.fNo != null)
      i += a.a.a.a.z(6, this.fNo);
    int j = i + a.a.a.a.br(7, this.cqq) + a.a.a.a.br(8, this.fzw) + a.a.a.a.br(9, this.fNp);
    if (this.fNq != null)
      j += a.a.a.a.z(10, this.fNq);
    if (this.fMl != null)
      j += a.a.a.a.z(11, this.fMl);
    if (this.cqt != null)
      j += a.a.a.a.z(12, this.cqt);
    if (this.fNr != null)
      j += a.a.a.a.z(13, this.fNr);
    if (this.fNs != null)
      j += a.a.a.a.z(14, this.fNs);
    int k = j + a.a.a.a.br(15, this.fNt) + a.a.a.a.br(19, this.fNu);
    if (this.fNv != null)
      k += a.a.a.a.bs(20, this.fNv.ns());
    if (this.cqx != null)
      k += a.a.a.a.z(21, this.cqx);
    if (this.fDg != null)
      k += a.a.a.a.z(22, this.fDg);
    if (this.fDh != null)
      k += a.a.a.a.z(23, this.fDh);
    if (this.cqy != null)
      k += a.a.a.a.z(24, this.cqy);
    if (this.fNw != null)
      k += a.a.a.a.bs(25, this.fNw.ns());
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.mm
 * JD-Core Version:    0.6.2
 */