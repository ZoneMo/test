package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class yu extends com.tencent.mm.am.a
{
  public String cqy;
  public int fBQ;
  public rz fBT;
  public String fBm;
  public String fDg;
  public String fDh;
  public vp fNv;
  public String fPf;
  public String fPg;
  public String fYV;
  public String fYW;
  public int fYX;
  public int fYY;
  public int fYZ;
  public String fZa;
  public int fZb;
  public rw fZc;
  public int fZd;
  public String fZe;
  public String fZf;
  public String fZg;
  public String fZh;
  public mu fzB;

  public static boolean a(a.a.a.a.a parama, yu paramyu, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      LinkedList localLinkedList4 = parama.oL(paramInt);
      int i2 = localLinkedList4.size();
      for (int i3 = 0; i3 < i2; i3++)
      {
        byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i3);
        vp localvp = new vp();
        a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte4, fxi);
        for (boolean bool4 = true; bool4; bool4 = vp.a(locala4, localvp, a(locala4)));
        paramyu.fNv = localvp;
      }
      return true;
    case 2:
      paramyu.cqy = parama.aPS();
      return true;
    case 3:
      paramyu.fYV = parama.aPS();
      return true;
    case 4:
      paramyu.fYW = parama.aPS();
      return true;
    case 5:
      paramyu.fYX = parama.aPQ();
      return true;
    case 6:
      paramyu.fYY = parama.aPQ();
      return true;
    case 7:
      paramyu.fYZ = parama.aPQ();
      return true;
    case 8:
      paramyu.fZa = parama.aPS();
      return true;
    case 9:
      paramyu.fDg = parama.aPS();
      return true;
    case 10:
      paramyu.fDh = parama.aPS();
      return true;
    case 11:
      paramyu.fZb = parama.aPQ();
      return true;
    case 12:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        rw localrw = new rw();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = rw.a(locala3, localrw, a(locala3)));
        paramyu.fZc = localrw;
      }
      return true;
    case 13:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rz localrz = new rz();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rz.a(locala2, localrz, a(locala2)));
        paramyu.fBT = localrz;
      }
      return true;
    case 14:
      paramyu.fBQ = parama.aPQ();
      return true;
    case 15:
      paramyu.fZd = parama.aPQ();
      return true;
    case 16:
      paramyu.fBm = parama.aPS();
      return true;
    case 17:
      paramyu.fPf = parama.aPS();
      return true;
    case 18:
      paramyu.fPg = parama.aPS();
      return true;
    case 19:
      paramyu.fZe = parama.aPS();
      return true;
    case 20:
      paramyu.fZf = parama.aPS();
      return true;
    case 21:
      paramyu.fZg = parama.aPS();
      return true;
    case 22:
      paramyu.fZh = parama.aPS();
      return true;
    case 23:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      mu localmu = new mu();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = mu.a(locala1, localmu, a(locala1)));
      paramyu.fzB = localmu;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fNv == null)
      throw new b("Not all required fields were included");
    if (this.fNv != null)
    {
      parama.bv(1, this.fNv.ns());
      this.fNv.a(parama);
    }
    if (this.cqy != null)
      parama.A(2, this.cqy);
    if (this.fYV != null)
      parama.A(3, this.fYV);
    if (this.fYW != null)
      parama.A(4, this.fYW);
    parama.by(5, this.fYX);
    parama.by(6, this.fYY);
    parama.by(7, this.fYZ);
    if (this.fZa != null)
      parama.A(8, this.fZa);
    if (this.fDg != null)
      parama.A(9, this.fDg);
    if (this.fDh != null)
      parama.A(10, this.fDh);
    parama.by(11, this.fZb);
    if (this.fZc != null)
    {
      parama.bv(12, this.fZc.ns());
      this.fZc.a(parama);
    }
    if (this.fBT != null)
    {
      parama.bv(13, this.fBT.ns());
      this.fBT.a(parama);
    }
    parama.by(14, this.fBQ);
    parama.by(15, this.fZd);
    if (this.fBm != null)
      parama.A(16, this.fBm);
    if (this.fPf != null)
      parama.A(17, this.fPf);
    if (this.fPg != null)
      parama.A(18, this.fPg);
    if (this.fZe != null)
      parama.A(19, this.fZe);
    if (this.fZf != null)
      parama.A(20, this.fZf);
    if (this.fZg != null)
      parama.A(21, this.fZg);
    if (this.fZh != null)
      parama.A(22, this.fZh);
    if (this.fzB != null)
    {
      parama.bv(23, this.fzB.ns());
      this.fzB.a(parama);
    }
  }

  public final yu cd(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if (this.fNv == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    vp localvp = this.fNv;
    int i = 0;
    if (localvp != null)
      i = 0 + a.a.a.a.bs(1, this.fNv.ns());
    if (this.cqy != null)
      i += a.a.a.a.z(2, this.cqy);
    if (this.fYV != null)
      i += a.a.a.a.z(3, this.fYV);
    if (this.fYW != null)
      i += a.a.a.a.z(4, this.fYW);
    int j = i + a.a.a.a.br(5, this.fYX) + a.a.a.a.br(6, this.fYY) + a.a.a.a.br(7, this.fYZ);
    if (this.fZa != null)
      j += a.a.a.a.z(8, this.fZa);
    if (this.fDg != null)
      j += a.a.a.a.z(9, this.fDg);
    if (this.fDh != null)
      j += a.a.a.a.z(10, this.fDh);
    int k = j + a.a.a.a.br(11, this.fZb);
    if (this.fZc != null)
      k += a.a.a.a.bs(12, this.fZc.ns());
    if (this.fBT != null)
      k += a.a.a.a.bs(13, this.fBT.ns());
    int m = k + a.a.a.a.br(14, this.fBQ) + a.a.a.a.br(15, this.fZd);
    if (this.fBm != null)
      m += a.a.a.a.z(16, this.fBm);
    if (this.fPf != null)
      m += a.a.a.a.z(17, this.fPf);
    if (this.fPg != null)
      m += a.a.a.a.z(18, this.fPg);
    if (this.fZe != null)
      m += a.a.a.a.z(19, this.fZe);
    if (this.fZf != null)
      m += a.a.a.a.z(20, this.fZf);
    if (this.fZg != null)
      m += a.a.a.a.z(21, this.fZg);
    if (this.fZh != null)
      m += a.a.a.a.z(22, this.fZh);
    if (this.fzB != null)
      m += a.a.a.a.bs(23, this.fzB.ns());
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yu
 * JD-Core Version:    0.6.2
 */