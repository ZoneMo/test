package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class ra extends com.tencent.mm.am.a
{
  public String fAe;
  public int fJk;
  public String fTn;
  public String fTo;
  public int fTp;
  public LinkedList fTq = new LinkedList();
  public String fTr;
  public String fTs;
  public String fTt;
  public String fTu;
  public String fTv;
  public String fTw;
  public String fyR;
  public String fyS;
  public String fyT;
  public String fyU;
  public String fyV;
  public String fyW;
  public String fyX;
  public String fyY;
  public String fyZ;
  public aal fza;

  public static boolean a(a.a.a.a.a parama, ra paramra, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramra.fyR = parama.aPS();
      return true;
    case 2:
      paramra.fyV = parama.aPS();
      return true;
    case 3:
      paramra.fyW = parama.aPS();
      return true;
    case 4:
      paramra.fTn = parama.aPS();
      return true;
    case 5:
      paramra.fyT = parama.aPS();
      return true;
    case 6:
      paramra.fyS = parama.aPS();
      return true;
    case 7:
      paramra.fTo = parama.aPS();
      return true;
    case 8:
      paramra.fTp = parama.aPQ();
      return true;
    case 9:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rw localrw = new rw();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rw.a(locala2, localrw, a(locala2)));
        paramra.fTq.add(localrw);
      }
      return true;
    case 10:
      paramra.fyX = parama.aPS();
      return true;
    case 11:
      paramra.fTr = parama.aPS();
      return true;
    case 12:
      paramra.fTs = parama.aPS();
      return true;
    case 13:
      paramra.fJk = parama.aPQ();
      return true;
    case 14:
      paramra.fAe = parama.aPS();
      return true;
    case 15:
      paramra.fyU = parama.aPS();
      return true;
    case 16:
      paramra.fyY = parama.aPS();
      return true;
    case 17:
      paramra.fTt = parama.aPS();
      return true;
    case 18:
      paramra.fTu = parama.aPS();
      return true;
    case 19:
      paramra.fyZ = parama.aPS();
      return true;
    case 20:
      paramra.fTv = parama.aPS();
      return true;
    case 21:
      paramra.fTw = parama.aPS();
      return true;
    case 22:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      aal localaal = new aal();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = aal.a(locala1, localaal, a(locala1)));
      paramra.fza = localaal;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyR != null)
      parama.A(1, this.fyR);
    if (this.fyV != null)
      parama.A(2, this.fyV);
    if (this.fyW != null)
      parama.A(3, this.fyW);
    if (this.fTn != null)
      parama.A(4, this.fTn);
    if (this.fyT != null)
      parama.A(5, this.fyT);
    if (this.fyS != null)
      parama.A(6, this.fyS);
    if (this.fTo != null)
      parama.A(7, this.fTo);
    parama.by(8, this.fTp);
    parama.c(9, 8, this.fTq);
    if (this.fyX != null)
      parama.A(10, this.fyX);
    if (this.fTr != null)
      parama.A(11, this.fTr);
    if (this.fTs != null)
      parama.A(12, this.fTs);
    parama.by(13, this.fJk);
    if (this.fAe != null)
      parama.A(14, this.fAe);
    if (this.fyU != null)
      parama.A(15, this.fyU);
    if (this.fyY != null)
      parama.A(16, this.fyY);
    if (this.fTt != null)
      parama.A(17, this.fTt);
    if (this.fTu != null)
      parama.A(18, this.fTu);
    if (this.fyZ != null)
      parama.A(19, this.fyZ);
    if (this.fTv != null)
      parama.A(20, this.fTv);
    if (this.fTw != null)
      parama.A(21, this.fTw);
    if (this.fza != null)
    {
      parama.bv(22, this.fza.ns());
      this.fza.a(parama);
    }
  }

  public final int ns()
  {
    String str = this.fyR;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyR);
    if (this.fyV != null)
      i += a.a.a.a.z(2, this.fyV);
    if (this.fyW != null)
      i += a.a.a.a.z(3, this.fyW);
    if (this.fTn != null)
      i += a.a.a.a.z(4, this.fTn);
    if (this.fyT != null)
      i += a.a.a.a.z(5, this.fyT);
    if (this.fyS != null)
      i += a.a.a.a.z(6, this.fyS);
    if (this.fTo != null)
      i += a.a.a.a.z(7, this.fTo);
    int j = i + a.a.a.a.br(8, this.fTp) + a.a.a.a.b(9, 8, this.fTq);
    if (this.fyX != null)
      j += a.a.a.a.z(10, this.fyX);
    if (this.fTr != null)
      j += a.a.a.a.z(11, this.fTr);
    if (this.fTs != null)
      j += a.a.a.a.z(12, this.fTs);
    int k = j + a.a.a.a.br(13, this.fJk);
    if (this.fAe != null)
      k += a.a.a.a.z(14, this.fAe);
    if (this.fyU != null)
      k += a.a.a.a.z(15, this.fyU);
    if (this.fyY != null)
      k += a.a.a.a.z(16, this.fyY);
    if (this.fTt != null)
      k += a.a.a.a.z(17, this.fTt);
    if (this.fTu != null)
      k += a.a.a.a.z(18, this.fTu);
    if (this.fyZ != null)
      k += a.a.a.a.z(19, this.fyZ);
    if (this.fTv != null)
      k += a.a.a.a.z(20, this.fTv);
    if (this.fTw != null)
      k += a.a.a.a.z(21, this.fTw);
    if (this.fza != null)
      k += a.a.a.a.bs(22, this.fza.ns());
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ra
 * JD-Core Version:    0.6.2
 */