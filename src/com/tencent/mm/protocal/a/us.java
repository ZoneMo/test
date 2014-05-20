package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class us extends com.tencent.mm.am.a
{
  public String fBM;
  public String fNU;
  public int fRc;
  public int fVA;
  public int fVB;
  public LinkedList fVC = new LinkedList();
  public int fVD;
  public int fVE;
  public LinkedList fVF = new LinkedList();
  public int fVG;
  public int fVH;
  public String fVI;
  public long fVJ;
  public int fVk;
  public long fVl;
  public rv fVv;
  public int fVw;
  public int fVx;
  public int fVy;
  public LinkedList fVz = new LinkedList();
  public LinkedList fzG = new LinkedList();
  public int fzy;

  public static boolean a(a.a.a.a.a parama, us paramus, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramus.fVl = parama.aPW();
      return true;
    case 2:
      paramus.fBM = parama.aPS();
      return true;
    case 3:
      paramus.fNU = parama.aPS();
      return true;
    case 4:
      paramus.fzy = parama.aPQ();
      return true;
    case 5:
      LinkedList localLinkedList5 = parama.oL(paramInt);
      int i4 = localLinkedList5.size();
      for (int i5 = 0; i5 < i4; i5++)
      {
        byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i5);
        rv localrv = new rv();
        a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte5, fxi);
        for (boolean bool5 = true; bool5; bool5 = rv.a(locala5, localrv, a(locala5)));
        paramus.fVv = localrv;
      }
      return true;
    case 6:
      paramus.fVw = parama.aPQ();
      return true;
    case 7:
      paramus.fVx = parama.aPQ();
      return true;
    case 8:
      paramus.fVy = parama.aPQ();
      return true;
    case 9:
      LinkedList localLinkedList4 = parama.oL(paramInt);
      int i2 = localLinkedList4.size();
      for (int i3 = 0; i3 < i2; i3++)
      {
        byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i3);
        um localum3 = new um();
        a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte4, fxi);
        for (boolean bool4 = true; bool4; bool4 = um.a(locala4, localum3, a(locala4)));
        paramus.fVz.add(localum3);
      }
      return true;
    case 10:
      paramus.fVA = parama.aPQ();
      return true;
    case 11:
      paramus.fVB = parama.aPQ();
      return true;
    case 12:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        um localum2 = new um();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = um.a(locala3, localum2, a(locala3)));
        paramus.fVC.add(localum2);
      }
      return true;
    case 13:
      paramus.fVD = parama.aPQ();
      return true;
    case 14:
      paramus.fVE = parama.aPQ();
      return true;
    case 15:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        um localum1 = new um();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = um.a(locala2, localum1, a(locala2)));
        paramus.fVF.add(localum1);
      }
      return true;
    case 16:
      paramus.fVG = parama.aPQ();
      return true;
    case 17:
      paramus.fVH = parama.aPQ();
      return true;
    case 18:
      paramus.fRc = parama.aPQ();
      return true;
    case 19:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        ur localur = new ur();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = ur.a(locala1, localur, a(locala1)));
        paramus.fzG.add(localur);
      }
      return true;
    case 20:
      paramus.fVk = parama.aPQ();
      return true;
    case 21:
      paramus.fVI = parama.aPS();
      return true;
    case 22:
    }
    paramus.fVJ = parama.aPW();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fVv == null)
      throw new b("Not all required fields were included");
    parama.k(1, this.fVl);
    if (this.fBM != null)
      parama.A(2, this.fBM);
    if (this.fNU != null)
      parama.A(3, this.fNU);
    parama.by(4, this.fzy);
    if (this.fVv != null)
    {
      parama.bv(5, this.fVv.ns());
      this.fVv.a(parama);
    }
    parama.by(6, this.fVw);
    parama.by(7, this.fVx);
    parama.by(8, this.fVy);
    parama.c(9, 8, this.fVz);
    parama.by(10, this.fVA);
    parama.by(11, this.fVB);
    parama.c(12, 8, this.fVC);
    parama.by(13, this.fVD);
    parama.by(14, this.fVE);
    parama.c(15, 8, this.fVF);
    parama.by(16, this.fVG);
    parama.by(17, this.fVH);
    parama.by(18, this.fRc);
    parama.c(19, 8, this.fzG);
    parama.by(20, this.fVk);
    if (this.fVI != null)
      parama.A(21, this.fVI);
    parama.k(22, this.fVJ);
  }

  public final us bU(byte[] paramArrayOfByte)
  {
    this.fVz.clear();
    this.fVC.clear();
    this.fVF.clear();
    this.fzG.clear();
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if (this.fVv == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.i(1, this.fVl);
    if (this.fBM != null)
      i += a.a.a.a.z(2, this.fBM);
    if (this.fNU != null)
      i += a.a.a.a.z(3, this.fNU);
    int j = i + a.a.a.a.br(4, this.fzy);
    if (this.fVv != null)
      j += a.a.a.a.bs(5, this.fVv.ns());
    int k = j + a.a.a.a.br(6, this.fVw) + a.a.a.a.br(7, this.fVx) + a.a.a.a.br(8, this.fVy) + a.a.a.a.b(9, 8, this.fVz) + a.a.a.a.br(10, this.fVA) + a.a.a.a.br(11, this.fVB) + a.a.a.a.b(12, 8, this.fVC) + a.a.a.a.br(13, this.fVD) + a.a.a.a.br(14, this.fVE) + a.a.a.a.b(15, 8, this.fVF) + a.a.a.a.br(16, this.fVG) + a.a.a.a.br(17, this.fVH) + a.a.a.a.br(18, this.fRc) + a.a.a.a.b(19, 8, this.fzG) + a.a.a.a.br(20, this.fVk);
    if (this.fVI != null)
      k += a.a.a.a.z(21, this.fVI);
    return k + a.a.a.a.i(22, this.fVJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.us
 * JD-Core Version:    0.6.2
 */