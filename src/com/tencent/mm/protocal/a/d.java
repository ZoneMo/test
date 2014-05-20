package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class d extends com.tencent.mm.am.a
{
  public int dGR;
  public String fyI;
  public int fyJ;
  public String fyK;
  public String fyL;
  public String fyM;
  public b fyN;
  public String fyO;
  public p fyP;
  public t fyQ;

  public static boolean a(a.a.a.a.a parama, d paramd, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramd.dGR = parama.aPQ();
      return true;
    case 2:
      paramd.fyI = parama.aPS();
      return true;
    case 3:
      paramd.fyJ = parama.aPQ();
      return true;
    case 4:
      paramd.fyK = parama.aPS();
      return true;
    case 5:
      paramd.fyL = parama.aPS();
      return true;
    case 6:
      paramd.fyM = parama.aPS();
      return true;
    case 7:
      LinkedList localLinkedList3 = parama.oL(paramInt);
      int n = localLinkedList3.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i1);
        b localb = new b();
        a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte3, fxi);
        for (boolean bool3 = true; bool3; bool3 = b.a(locala3, localb, a(locala3)));
        paramd.fyN = localb;
      }
      return true;
    case 8:
      paramd.fyO = parama.aPS();
      return true;
    case 9:
      LinkedList localLinkedList2 = parama.oL(paramInt);
      int k = localLinkedList2.size();
      for (int m = 0; m < k; m++)
      {
        byte[] arrayOfByte2 = (byte[])localLinkedList2.get(m);
        p localp = new p();
        a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte2, fxi);
        for (boolean bool2 = true; bool2; bool2 = p.a(locala2, localp, a(locala2)));
        paramd.fyP = localp;
      }
      return true;
    case 10:
    }
    LinkedList localLinkedList1 = parama.oL(paramInt);
    int i = localLinkedList1.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte1 = (byte[])localLinkedList1.get(j);
      t localt = new t();
      a.a.a.a.a locala1 = new a.a.a.a.a(arrayOfByte1, fxi);
      for (boolean bool1 = true; bool1; bool1 = t.a(locala1, localt, a(locala1)));
      paramd.fyQ = localt;
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.dGR);
    if (this.fyI != null)
      parama.A(2, this.fyI);
    parama.by(3, this.fyJ);
    if (this.fyK != null)
      parama.A(4, this.fyK);
    if (this.fyL != null)
      parama.A(5, this.fyL);
    if (this.fyM != null)
      parama.A(6, this.fyM);
    if (this.fyN != null)
    {
      parama.bv(7, this.fyN.ns());
      this.fyN.a(parama);
    }
    if (this.fyO != null)
      parama.A(8, this.fyO);
    if (this.fyP != null)
    {
      parama.bv(9, this.fyP.ns());
      this.fyP.a(parama);
    }
    if (this.fyQ != null)
    {
      parama.bv(10, this.fyQ.ns());
      this.fyQ.a(parama);
    }
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.dGR);
    if (this.fyI != null)
      i += a.a.a.a.z(2, this.fyI);
    int j = i + a.a.a.a.br(3, this.fyJ);
    if (this.fyK != null)
      j += a.a.a.a.z(4, this.fyK);
    if (this.fyL != null)
      j += a.a.a.a.z(5, this.fyL);
    if (this.fyM != null)
      j += a.a.a.a.z(6, this.fyM);
    if (this.fyN != null)
      j += a.a.a.a.bs(7, this.fyN.ns());
    if (this.fyO != null)
      j += a.a.a.a.z(8, this.fyO);
    if (this.fyP != null)
      j += a.a.a.a.bs(9, this.fyP.ns());
    if (this.fyQ != null)
      j += a.a.a.a.bs(10, this.fyQ.ns());
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.d
 * JD-Core Version:    0.6.2
 */