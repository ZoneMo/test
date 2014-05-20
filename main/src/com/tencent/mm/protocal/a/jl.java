package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class jl extends rt
{
  public int fBj;
  public rv fLC;
  public int fLD;
  public LinkedList fLE = new LinkedList();
  public int fLF;
  public String fLG;
  public String fLH;
  public String fyI;

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fTZ == null) || (this.fLC == null))
      throw new b("Not all required fields were included");
    if (this.fTZ != null)
    {
      parama.bv(1, this.fTZ.ns());
      this.fTZ.a(parama);
    }
    parama.by(2, this.fLD);
    parama.c(3, 8, this.fLE);
    parama.by(4, this.fBj);
    parama.by(5, this.fLF);
    if (this.fLC != null)
    {
      parama.bv(6, this.fLC.ns());
      this.fLC.a(parama);
    }
    if (this.fyI != null)
      parama.A(7, this.fyI);
    if (this.fLG != null)
      parama.A(8, this.fLG);
    if (this.fLH != null)
      parama.A(9, this.fLH);
  }

  public final jl bn(byte[] paramArrayOfByte)
  {
    this.fLE.clear();
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      int j;
      switch (i)
      {
      default:
        j = 0;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          av localav = new av();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = av.a(locala4, localav, a(locala4)));
          this.fTZ = localav;
        }
        j = 1;
        continue;
        this.fLD = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          po localpo = new po();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = po.a(locala3, localpo, a(locala3)));
          this.fLE.add(localpo);
        }
        j = 1;
        continue;
        this.fBj = locala1.aPQ();
        j = 1;
        continue;
        this.fLF = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          rv localrv = new rv();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = rv.a(locala2, localrv, a(locala2)));
          this.fLC = localrv;
        }
        j = 1;
        continue;
        this.fyI = locala1.aPS();
        j = 1;
        continue;
        this.fLG = locala1.aPS();
        j = 1;
        continue;
        this.fLH = locala1.aPS();
        j = 1;
      }
    }
    if ((this.fTZ == null) || (this.fLC == null))
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    av localav = this.fTZ;
    int i = 0;
    if (localav != null)
      i = 0 + a.a.a.a.bs(1, this.fTZ.ns());
    int j = i + a.a.a.a.br(2, this.fLD) + a.a.a.a.b(3, 8, this.fLE) + a.a.a.a.br(4, this.fBj) + a.a.a.a.br(5, this.fLF);
    if (this.fLC != null)
      j += a.a.a.a.bs(6, this.fLC.ns());
    if (this.fyI != null)
      j += a.a.a.a.z(7, this.fyI);
    if (this.fLG != null)
      j += a.a.a.a.z(8, this.fLG);
    if (this.fLH != null)
      j += a.a.a.a.z(9, this.fLH);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.jl
 * JD-Core Version:    0.6.2
 */