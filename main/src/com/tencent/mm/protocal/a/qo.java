package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class qo extends com.tencent.mm.am.a
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
  public String eBo;
  public String fDe;
  public String fDg;
  public String fDh;
  public vp fNv;
  public dl fNw;
  public int fTb;
  public String fTc;
  public int fTd;
  public String fTe;

  public static boolean a(a.a.a.a.a parama, qo paramqo, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqo.fTb = parama.aPQ();
      return true;
    case 2:
      paramqo.eBo = parama.aPS();
      return true;
    case 3:
      paramqo.fDe = parama.aPS();
      return true;
    case 4:
      paramqo.fTc = parama.aPS();
      return true;
    case 5:
      paramqo.fTd = parama.aPQ();
      return true;
    case 6:
      paramqo.fTe = parama.aPS();
      return true;
    case 7:
      paramqo.cqq = parama.aPQ();
      return true;
    case 8:
      paramqo.Tu = parama.aPS();
      return true;
    case 9:
      paramqo.Tv = parama.aPS();
      return true;
    case 10:
      paramqo.cqr = parama.aPS();
      return true;
    case 11:
      paramqo.cqs = parama.aPQ();
      return true;
    case 12:
      paramqo.cqt = parama.aPS();
      return true;
    case 13:
      paramqo.cqu = parama.aPQ();
      return true;
    case 14:
      paramqo.cqv = parama.aPQ();
      return true;
    case 15:
      paramqo.cqw = parama.aPS();
      return true;
    case 16:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        vp localvp = new vp();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = vp.a(locala2, localvp, a(locala2)));
        paramqo.fNv = localvp;
      }
      return true;
    case 17:
      paramqo.cqx = parama.aPS();
      return true;
    case 18:
      paramqo.cqy = parama.aPS();
      return true;
    case 19:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        dl localdl = new dl();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = dl.a(locala1, localdl, a(locala1)));
        paramqo.fNw = localdl;
      }
      return true;
    case 20:
      paramqo.fDg = parama.aPS();
      return true;
    case 21:
    }
    paramqo.fDh = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fTb);
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fDe != null)
      parama.A(3, this.fDe);
    if (this.fTc != null)
      parama.A(4, this.fTc);
    parama.by(5, this.fTd);
    if (this.fTe != null)
      parama.A(6, this.fTe);
    parama.by(7, this.cqq);
    if (this.Tu != null)
      parama.A(8, this.Tu);
    if (this.Tv != null)
      parama.A(9, this.Tv);
    if (this.cqr != null)
      parama.A(10, this.cqr);
    parama.by(11, this.cqs);
    if (this.cqt != null)
      parama.A(12, this.cqt);
    parama.by(13, this.cqu);
    parama.by(14, this.cqv);
    if (this.cqw != null)
      parama.A(15, this.cqw);
    if (this.fNv != null)
    {
      parama.bv(16, this.fNv.ns());
      this.fNv.a(parama);
    }
    if (this.cqx != null)
      parama.A(17, this.cqx);
    if (this.cqy != null)
      parama.A(18, this.cqy);
    if (this.fNw != null)
    {
      parama.bv(19, this.fNw.ns());
      this.fNw.a(parama);
    }
    if (this.fDg != null)
      parama.A(20, this.fDg);
    if (this.fDh != null)
      parama.A(21, this.fDh);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fTb);
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fDe != null)
      i += a.a.a.a.z(3, this.fDe);
    if (this.fTc != null)
      i += a.a.a.a.z(4, this.fTc);
    int j = i + a.a.a.a.br(5, this.fTd);
    if (this.fTe != null)
      j += a.a.a.a.z(6, this.fTe);
    int k = j + a.a.a.a.br(7, this.cqq);
    if (this.Tu != null)
      k += a.a.a.a.z(8, this.Tu);
    if (this.Tv != null)
      k += a.a.a.a.z(9, this.Tv);
    if (this.cqr != null)
      k += a.a.a.a.z(10, this.cqr);
    int m = k + a.a.a.a.br(11, this.cqs);
    if (this.cqt != null)
      m += a.a.a.a.z(12, this.cqt);
    int n = m + a.a.a.a.br(13, this.cqu) + a.a.a.a.br(14, this.cqv);
    if (this.cqw != null)
      n += a.a.a.a.z(15, this.cqw);
    if (this.fNv != null)
      n += a.a.a.a.bs(16, this.fNv.ns());
    if (this.cqx != null)
      n += a.a.a.a.z(17, this.cqx);
    if (this.cqy != null)
      n += a.a.a.a.z(18, this.cqy);
    if (this.fNw != null)
      n += a.a.a.a.bs(19, this.fNw.ns());
    if (this.fDg != null)
      n += a.a.a.a.z(20, this.fDg);
    if (this.fDh != null)
      n += a.a.a.a.z(21, this.fDh);
    return n;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qo
 * JD-Core Version:    0.6.2
 */