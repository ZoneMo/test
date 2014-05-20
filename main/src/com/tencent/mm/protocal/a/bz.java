package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class bz extends com.tencent.mm.am.a
{
  public int fAX;
  public int fCL;
  public int fCM;
  public int fCN;
  public int fCO;
  public LinkedList fCP = new LinkedList();
  public String fCQ;
  public rv fCR;
  public int fCS;
  public int fCT;
  public LinkedList fCU = new LinkedList();

  public static boolean a(a.a.a.a.a parama, bz parambz, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parambz.fCL = parama.aPQ();
      return true;
    case 2:
      parambz.fAX = parama.aPQ();
      return true;
    case 3:
      parambz.fCM = parama.aPQ();
      return true;
    case 4:
      parambz.fCN = parama.aPQ();
      return true;
    case 5:
      parambz.fCO = parama.aPQ();
      return true;
    case 6:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        rw localrw2 = new rw();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = rw.a(locala3, localrw2, a(locala3)));
        parambz.fCP.add(localrw2);
      }
      return true;
    case 7:
      parambz.fCQ = parama.aPS();
      return true;
    case 8:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        rv localrv = new rv();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = rv.a(locala2, localrv, a(locala2)));
        parambz.fCR = localrv;
      }
      return true;
    case 9:
      parambz.fCS = parama.aPQ();
      return true;
    case 10:
      parambz.fCT = parama.aPQ();
      return true;
    case 11:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      rw localrw1 = new rw();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = rw.a(locala1, localrw1, a(locala1)));
      parambz.fCU.add(localrw1);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fCR == null)
      throw new b("Not all required fields were included");
    parama.by(1, this.fCL);
    parama.by(2, this.fAX);
    parama.by(3, this.fCM);
    parama.by(4, this.fCN);
    parama.by(5, this.fCO);
    parama.c(6, 8, this.fCP);
    if (this.fCQ != null)
      parama.A(7, this.fCQ);
    if (this.fCR != null)
    {
      parama.bv(8, this.fCR.ns());
      this.fCR.a(parama);
    }
    parama.by(9, this.fCS);
    parama.by(10, this.fCT);
    parama.c(11, 8, this.fCU);
  }

  public final bz aK(byte[] paramArrayOfByte)
  {
    this.fCP.clear();
    this.fCU.clear();
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    if (this.fCR == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fCL) + a.a.a.a.br(2, this.fAX) + a.a.a.a.br(3, this.fCM) + a.a.a.a.br(4, this.fCN) + a.a.a.a.br(5, this.fCO) + a.a.a.a.b(6, 8, this.fCP);
    if (this.fCQ != null)
      i += a.a.a.a.z(7, this.fCQ);
    if (this.fCR != null)
      i += a.a.a.a.bs(8, this.fCR.ns());
    return i + a.a.a.a.br(9, this.fCS) + a.a.a.a.br(10, this.fCT) + a.a.a.a.b(11, 8, this.fCU);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bz
 * JD-Core Version:    0.6.2
 */