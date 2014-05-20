package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ez extends com.tencent.mm.am.a
{
  public String dGT;
  public String fFB;
  public String fFC;
  public String fFD;
  public String fFE;
  public String fFF;
  public int fFG;
  public int fFH;
  public int fFI;
  public LinkedList fFJ = new LinkedList();
  public String fFK;
  public int fFL;
  public String fFM;
  public String fFN;
  public String fFO;
  public String fFP;
  public String fFQ;
  public int fFR;
  public LinkedList fFS = new LinkedList();
  public int fFT;
  public String fFU;
  public String fFV;
  public String fFW;

  public static boolean a(a.a.a.a.a parama, ez paramez, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramez.fFB = parama.aPS();
      return true;
    case 2:
      paramez.dGT = parama.aPS();
      return true;
    case 3:
      paramez.fFC = parama.aPS();
      return true;
    case 4:
      paramez.fFD = parama.aPS();
      return true;
    case 5:
      paramez.fFE = parama.aPS();
      return true;
    case 6:
      paramez.fFF = parama.aPS();
      return true;
    case 7:
      paramez.fFG = parama.aPQ();
      return true;
    case 8:
      paramez.fFH = parama.aPQ();
      return true;
    case 9:
      paramez.fFI = parama.aPQ();
      return true;
    case 10:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rw localrw = new rw();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rw.a(locala2, localrw, a(locala2)));
        paramez.fFJ.add(localrw);
      }
      return true;
    case 11:
      paramez.fFK = parama.aPS();
      return true;
    case 12:
      paramez.fFL = parama.aPQ();
      return true;
    case 13:
      paramez.fFM = parama.aPS();
      return true;
    case 14:
      paramez.fFN = parama.aPS();
      return true;
    case 15:
      paramez.fFO = parama.aPS();
      return true;
    case 16:
      paramez.fFP = parama.aPS();
      return true;
    case 17:
      paramez.fFQ = parama.aPS();
      return true;
    case 18:
      paramez.fFR = parama.aPQ();
      return true;
    case 19:
      LinkedList localLinkedList1 = parama.oL(paramInt);
      int i = localLinkedList1.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
        pq localpq = new pq();
        a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
        for (boolean bool1 = true; bool1; bool1 = pq.a(locala1, localpq, a(locala1)));
        paramez.fFS.add(localpq);
      }
      return true;
    case 20:
      paramez.fFT = parama.aPQ();
      return true;
    case 21:
      paramez.fFU = parama.aPS();
      return true;
    case 22:
      paramez.fFV = parama.aPS();
      return true;
    case 23:
    }
    paramez.fFW = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fFB != null)
      parama.A(1, this.fFB);
    if (this.dGT != null)
      parama.A(2, this.dGT);
    if (this.fFC != null)
      parama.A(3, this.fFC);
    if (this.fFD != null)
      parama.A(4, this.fFD);
    if (this.fFE != null)
      parama.A(5, this.fFE);
    if (this.fFF != null)
      parama.A(6, this.fFF);
    parama.by(7, this.fFG);
    parama.by(8, this.fFH);
    parama.by(9, this.fFI);
    parama.c(10, 8, this.fFJ);
    if (this.fFK != null)
      parama.A(11, this.fFK);
    parama.by(12, this.fFL);
    if (this.fFM != null)
      parama.A(13, this.fFM);
    if (this.fFN != null)
      parama.A(14, this.fFN);
    if (this.fFO != null)
      parama.A(15, this.fFO);
    if (this.fFP != null)
      parama.A(16, this.fFP);
    if (this.fFQ != null)
      parama.A(17, this.fFQ);
    parama.by(18, this.fFR);
    parama.c(19, 8, this.fFS);
    parama.by(20, this.fFT);
    if (this.fFU != null)
      parama.A(21, this.fFU);
    if (this.fFV != null)
      parama.A(22, this.fFV);
    if (this.fFW != null)
      parama.A(23, this.fFW);
  }

  public final int ns()
  {
    String str = this.fFB;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fFB);
    if (this.dGT != null)
      i += a.a.a.a.z(2, this.dGT);
    if (this.fFC != null)
      i += a.a.a.a.z(3, this.fFC);
    if (this.fFD != null)
      i += a.a.a.a.z(4, this.fFD);
    if (this.fFE != null)
      i += a.a.a.a.z(5, this.fFE);
    if (this.fFF != null)
      i += a.a.a.a.z(6, this.fFF);
    int j = i + a.a.a.a.br(7, this.fFG) + a.a.a.a.br(8, this.fFH) + a.a.a.a.br(9, this.fFI) + a.a.a.a.b(10, 8, this.fFJ);
    if (this.fFK != null)
      j += a.a.a.a.z(11, this.fFK);
    int k = j + a.a.a.a.br(12, this.fFL);
    if (this.fFM != null)
      k += a.a.a.a.z(13, this.fFM);
    if (this.fFN != null)
      k += a.a.a.a.z(14, this.fFN);
    if (this.fFO != null)
      k += a.a.a.a.z(15, this.fFO);
    if (this.fFP != null)
      k += a.a.a.a.z(16, this.fFP);
    if (this.fFQ != null)
      k += a.a.a.a.z(17, this.fFQ);
    int m = k + a.a.a.a.br(18, this.fFR) + a.a.a.a.b(19, 8, this.fFS) + a.a.a.a.br(20, this.fFT);
    if (this.fFU != null)
      m += a.a.a.a.z(21, this.fFU);
    if (this.fFV != null)
      m += a.a.a.a.z(22, this.fFV);
    if (this.fFW != null)
      m += a.a.a.a.z(23, this.fFW);
    return m;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ez
 * JD-Core Version:    0.6.2
 */