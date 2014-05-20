package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class qm extends com.tencent.mm.am.a
{
  public String Th;
  public int dGR;
  public int fAC;
  public String fFO;
  public String fLQ;
  public int fSQ;
  public LinkedList fSR = new LinkedList();
  public int fSS;
  public String fST;
  public String fSU;
  public String fSV;
  public int fSW;
  public String fSX;
  public int fSY;
  public LinkedList fSZ = new LinkedList();
  public int fyJ;

  public static boolean a(a.a.a.a.a parama, qm paramqm, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqm.fSQ = parama.aPQ();
      return true;
    case 2:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        me localme = new me();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = me.a(locala2, localme, a(locala2)));
        paramqm.fSR.add(localme);
      }
      return true;
    case 3:
      paramqm.fAC = parama.aPQ();
      return true;
    case 4:
      paramqm.fSS = parama.aPQ();
      return true;
    case 5:
      paramqm.fFO = parama.aPS();
      return true;
    case 6:
      paramqm.fLQ = parama.aPS();
      return true;
    case 7:
      paramqm.fST = parama.aPS();
      return true;
    case 8:
      paramqm.fSU = parama.aPS();
      return true;
    case 9:
      paramqm.dGR = parama.aPQ();
      return true;
    case 10:
      paramqm.Th = parama.aPS();
      return true;
    case 11:
      paramqm.fSV = parama.aPS();
      return true;
    case 12:
      paramqm.fSW = parama.aPQ();
      return true;
    case 13:
      paramqm.fyJ = parama.aPQ();
      return true;
    case 14:
      paramqm.fSX = parama.aPS();
      return true;
    case 15:
      paramqm.fSY = parama.aPQ();
      return true;
    case 16:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      ec localec = new ec();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = ec.a(locala1, localec, a(locala1)));
      paramqm.fSZ.add(localec);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fSQ);
    parama.c(2, 8, this.fSR);
    parama.by(3, this.fAC);
    parama.by(4, this.fSS);
    if (this.fFO != null)
      parama.A(5, this.fFO);
    if (this.fLQ != null)
      parama.A(6, this.fLQ);
    if (this.fST != null)
      parama.A(7, this.fST);
    if (this.fSU != null)
      parama.A(8, this.fSU);
    parama.by(9, this.dGR);
    if (this.Th != null)
      parama.A(10, this.Th);
    if (this.fSV != null)
      parama.A(11, this.fSV);
    parama.by(12, this.fSW);
    parama.by(13, this.fyJ);
    if (this.fSX != null)
      parama.A(14, this.fSX);
    parama.by(15, this.fSY);
    parama.c(16, 8, this.fSZ);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fSQ) + a.a.a.a.b(2, 8, this.fSR) + a.a.a.a.br(3, this.fAC) + a.a.a.a.br(4, this.fSS);
    if (this.fFO != null)
      i += a.a.a.a.z(5, this.fFO);
    if (this.fLQ != null)
      i += a.a.a.a.z(6, this.fLQ);
    if (this.fST != null)
      i += a.a.a.a.z(7, this.fST);
    if (this.fSU != null)
      i += a.a.a.a.z(8, this.fSU);
    int j = i + a.a.a.a.br(9, this.dGR);
    if (this.Th != null)
      j += a.a.a.a.z(10, this.Th);
    if (this.fSV != null)
      j += a.a.a.a.z(11, this.fSV);
    int k = j + a.a.a.a.br(12, this.fSW) + a.a.a.a.br(13, this.fyJ);
    if (this.fSX != null)
      k += a.a.a.a.z(14, this.fSX);
    return k + a.a.a.a.br(15, this.fSY) + a.a.a.a.b(16, 8, this.fSZ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qm
 * JD-Core Version:    0.6.2
 */