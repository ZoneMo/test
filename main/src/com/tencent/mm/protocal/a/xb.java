package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class xb extends com.tencent.mm.am.a
{
  public String eBo;
  public d exC;
  public int fOp;
  public String fXS;
  public nb fXT;
  public s fXU;
  public dg fXV;
  public String fXW;
  public String fXX;
  public String fXY;
  public int fXZ;
  public int fYa;
  public String fYb;
  public String fzM;
  public int fzy;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzM != null)
      parama.A(1, this.fzM);
    if (this.eBo != null)
      parama.A(2, this.eBo);
    parama.by(3, this.fOp);
    parama.by(4, this.fzy);
    if (this.fXS != null)
      parama.A(5, this.fXS);
    if (this.fXT != null)
    {
      parama.bv(6, this.fXT.ns());
      this.fXT.a(parama);
    }
    if (this.fXU != null)
    {
      parama.bv(7, this.fXU.ns());
      this.fXU.a(parama);
    }
    if (this.fXV != null)
    {
      parama.bv(8, this.fXV.ns());
      this.fXV.a(parama);
    }
    if (this.fXW != null)
      parama.A(9, this.fXW);
    if (this.fXX != null)
      parama.A(10, this.fXX);
    if (this.fXY != null)
      parama.A(11, this.fXY);
    parama.by(12, this.fXZ);
    parama.by(13, this.fYa);
    if (this.fYb != null)
      parama.A(14, this.fYb);
    if (this.exC != null)
    {
      parama.bv(15, this.exC.ns());
      this.exC.a(parama);
    }
  }

  public final xb cb(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala1 = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala1);
    if (i > 0)
    {
      int m;
      switch (i)
      {
      default:
        m = 0;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.fzM = locala1.aPS();
        m = 1;
        continue;
        this.eBo = locala1.aPS();
        m = 1;
        continue;
        this.fOp = locala1.aPQ();
        m = 1;
        continue;
        this.fzy = locala1.aPQ();
        m = 1;
        continue;
        this.fXS = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          nb localnb = new nb();
          a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = nb.a(locala5, localnb, a(locala5)));
          this.fXT = localnb;
        }
        m = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          s locals = new s();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = s.a(locala4, locals, a(locala4)));
          this.fXU = locals;
        }
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          dg localdg = new dg();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = dg.a(locala3, localdg, a(locala3)));
          this.fXV = localdg;
        }
        m = 1;
        continue;
        this.fXW = locala1.aPS();
        m = 1;
        continue;
        this.fXX = locala1.aPS();
        m = 1;
        continue;
        this.fXY = locala1.aPS();
        m = 1;
        continue;
        this.fXZ = locala1.aPQ();
        m = 1;
        continue;
        this.fYa = locala1.aPQ();
        m = 1;
        continue;
        this.fYb = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          d locald = new d();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = d.a(locala2, locald, a(locala2)));
          this.exC = locald;
        }
        m = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    String str = this.fzM;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzM);
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    int j = i + a.a.a.a.br(3, this.fOp) + a.a.a.a.br(4, this.fzy);
    if (this.fXS != null)
      j += a.a.a.a.z(5, this.fXS);
    if (this.fXT != null)
      j += a.a.a.a.bs(6, this.fXT.ns());
    if (this.fXU != null)
      j += a.a.a.a.bs(7, this.fXU.ns());
    if (this.fXV != null)
      j += a.a.a.a.bs(8, this.fXV.ns());
    if (this.fXW != null)
      j += a.a.a.a.z(9, this.fXW);
    if (this.fXX != null)
      j += a.a.a.a.z(10, this.fXX);
    if (this.fXY != null)
      j += a.a.a.a.z(11, this.fXY);
    int k = j + a.a.a.a.br(12, this.fXZ) + a.a.a.a.br(13, this.fYa);
    if (this.fYb != null)
      k += a.a.a.a.z(14, this.fYb);
    if (this.exC != null)
      k += a.a.a.a.bs(15, this.exC.ns());
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xb
 * JD-Core Version:    0.6.2
 */