package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class tn extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public int cqq;
  public String cqr;
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
  public int fUE;
  public rv fUF;
  public int fUG;
  public int fzw;

  public static boolean a(a.a.a.a.a parama, tn paramtn, int paramInt)
  {
    switch (paramInt)
    {
    case 18:
    case 19:
    case 20:
    default:
      return false;
    case 1:
      paramtn.eBo = parama.aPS();
      return true;
    case 2:
      paramtn.fDe = parama.aPS();
      return true;
    case 3:
      paramtn.Tu = parama.aPS();
      return true;
    case 4:
      paramtn.Tv = parama.aPS();
      return true;
    case 5:
      paramtn.cqr = parama.aPS();
      return true;
    case 6:
      paramtn.fNo = parama.aPS();
      return true;
    case 7:
      paramtn.cqq = parama.aPQ();
      return true;
    case 8:
      paramtn.fzw = parama.aPQ();
      return true;
    case 9:
      paramtn.fUE = parama.aPQ();
      return true;
    case 10:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        rv localrv = new rv();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = rv.a(locala3, localrv, a(locala3)));
        paramtn.fUF = localrv;
      }
      return true;
    case 11:
      paramtn.fUG = parama.aPQ();
      return true;
    case 12:
      paramtn.fNr = parama.aPS();
      return true;
    case 13:
      paramtn.fNs = parama.aPS();
      return true;
    case 14:
      paramtn.fNt = parama.aPQ();
      return true;
    case 15:
      paramtn.fNp = parama.aPQ();
      return true;
    case 16:
      paramtn.fNq = parama.aPS();
      return true;
    case 17:
      paramtn.fMl = parama.aPS();
      return true;
    case 21:
      paramtn.fNu = parama.aPQ();
      return true;
    case 22:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        vp localvp = new vp();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = vp.a(locala2, localvp, a(locala2)));
        paramtn.fNv = localvp;
      }
      return true;
    case 23:
      paramtn.cqx = parama.aPS();
      return true;
    case 24:
      paramtn.fDg = parama.aPS();
      return true;
    case 25:
      paramtn.fDh = parama.aPS();
      return true;
    case 26:
      paramtn.cqy = parama.aPS();
      return true;
    case 27:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      dl localdl = new dl();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = dl.a(locala1, localdl, a(locala1)));
      paramtn.fNw = localdl;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fUF == null)
      throw new b("Not all required fields were included");
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
    parama.by(9, this.fUE);
    if (this.fUF != null)
    {
      parama.bv(10, this.fUF.ns());
      this.fUF.a(parama);
    }
    parama.by(11, this.fUG);
    if (this.fNr != null)
      parama.A(12, this.fNr);
    if (this.fNs != null)
      parama.A(13, this.fNs);
    parama.by(14, this.fNt);
    parama.by(15, this.fNp);
    if (this.fNq != null)
      parama.A(16, this.fNq);
    if (this.fMl != null)
      parama.A(17, this.fMl);
    parama.by(21, this.fNu);
    if (this.fNv != null)
    {
      parama.bv(22, this.fNv.ns());
      this.fNv.a(parama);
    }
    if (this.cqx != null)
      parama.A(23, this.cqx);
    if (this.fDg != null)
      parama.A(24, this.fDg);
    if (this.fDh != null)
      parama.A(25, this.fDh);
    if (this.cqy != null)
      parama.A(26, this.cqy);
    if (this.fNw != null)
    {
      parama.bv(27, this.fNw.ns());
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
    int j = i + a.a.a.a.br(7, this.cqq) + a.a.a.a.br(8, this.fzw) + a.a.a.a.br(9, this.fUE);
    if (this.fUF != null)
      j += a.a.a.a.bs(10, this.fUF.ns());
    int k = j + a.a.a.a.br(11, this.fUG);
    if (this.fNr != null)
      k += a.a.a.a.z(12, this.fNr);
    if (this.fNs != null)
      k += a.a.a.a.z(13, this.fNs);
    int m = k + a.a.a.a.br(14, this.fNt) + a.a.a.a.br(15, this.fNp);
    if (this.fNq != null)
      m += a.a.a.a.z(16, this.fNq);
    if (this.fMl != null)
      m += a.a.a.a.z(17, this.fMl);
    int n = m + a.a.a.a.br(21, this.fNu);
    if (this.fNv != null)
      n += a.a.a.a.bs(22, this.fNv.ns());
    if (this.cqx != null)
      n += a.a.a.a.z(23, this.cqx);
    if (this.fDg != null)
      n += a.a.a.a.z(24, this.fDg);
    if (this.fDh != null)
      n += a.a.a.a.z(25, this.fDh);
    if (this.cqy != null)
      n += a.a.a.a.z(26, this.cqy);
    if (this.fNw != null)
      n += a.a.a.a.bs(27, this.fNw.ns());
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.tn
 * JD-Core Version:    0.6.2
 */