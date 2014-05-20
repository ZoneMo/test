package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class fx extends com.tencent.mm.am.a
{
  private String desc;
  public boolean fGE = false;
  public boolean fGF = false;
  private fy fHN;
  public boolean fHO = false;
  public LinkedList fHP = new LinkedList();
  public boolean fHQ = false;
  private fu fHR;
  public boolean fHS = false;
  private gc fHT;
  public boolean fHU = false;
  private String fHV;
  public boolean fHW = false;
  private long fHX;
  public boolean fHY = false;
  private int fHZ = -1;
  public boolean fIa = false;
  private fw fIb;
  public boolean fIc = false;
  private long fId;
  public boolean fIe = false;
  private gb fIf;
  public boolean fIg = false;
  private String title;

  public final fx S(LinkedList paramLinkedList)
  {
    this.fHP = paramLinkedList;
    this.fHQ = true;
    return this;
  }

  public final fx a(fu paramfu)
  {
    this.fHR = paramfu;
    this.fHS = true;
    return this;
  }

  public final fx a(fw paramfw)
  {
    this.fIb = paramfw;
    this.fIc = true;
    return this;
  }

  public final fx a(fy paramfy)
  {
    this.fHN = paramfy;
    this.fHO = true;
    return this;
  }

  public final fx a(gb paramgb)
  {
    this.fIf = paramgb;
    this.fIg = true;
    return this;
  }

  public final fx a(gc paramgc)
  {
    this.fHT = paramgc;
    this.fHU = true;
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fHN != null)
    {
      parama.bv(1, this.fHN.ns());
      this.fHN.a(parama);
    }
    parama.c(2, 8, this.fHP);
    if (this.fHR != null)
    {
      parama.bv(3, this.fHR.ns());
      this.fHR.a(parama);
    }
    if (this.fHT != null)
    {
      parama.bv(4, this.fHT.ns());
      this.fHT.a(parama);
    }
    if (this.fHV != null)
      parama.A(5, this.fHV);
    if (this.title != null)
      parama.A(6, this.title);
    if (this.desc != null)
      parama.A(7, this.desc);
    if (this.fHY == true)
      parama.k(8, this.fHX);
    if (this.fIa == true)
      parama.by(9, this.fHZ);
    if (this.fIb != null)
    {
      parama.bv(10, this.fIb.ns());
      this.fIb.a(parama);
    }
    if (this.fIe == true)
      parama.k(11, this.fId);
    if (this.fIf != null)
    {
      parama.bv(12, this.fIf.ns());
      this.fIf.a(parama);
    }
  }

  public final fx aT(byte[] paramArrayOfByte)
  {
    this.fHP.clear();
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
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList6 = locala1.oL(i);
        int i8 = localLinkedList6.size();
        for (int i9 = 0; i9 < i8; i9++)
        {
          byte[] arrayOfByte6 = (byte[])localLinkedList6.get(i9);
          fy localfy = new fy();
          a.a.a.a.a locala7 = new a.a.a.a.a(arrayOfByte6, fxi);
          for (boolean bool6 = true; bool6; bool6 = fy.a(locala7, localfy, a(locala7)));
          this.fHN = localfy;
        }
        this.fHO = true;
        m = 1;
        continue;
        LinkedList localLinkedList5 = locala1.oL(i);
        int i6 = localLinkedList5.size();
        for (int i7 = 0; i7 < i6; i7++)
        {
          byte[] arrayOfByte5 = (byte[])localLinkedList5.get(i7);
          ft localft = new ft();
          a.a.a.a.a locala6 = new a.a.a.a.a(arrayOfByte5, fxi);
          for (boolean bool5 = true; bool5; bool5 = ft.a(locala6, localft, a(locala6)));
          this.fHP.add(localft);
        }
        this.fHQ = true;
        m = 1;
        continue;
        LinkedList localLinkedList4 = locala1.oL(i);
        int i4 = localLinkedList4.size();
        for (int i5 = 0; i5 < i4; i5++)
        {
          byte[] arrayOfByte4 = (byte[])localLinkedList4.get(i5);
          fu localfu = new fu();
          a.a.a.a.a locala5 = new a.a.a.a.a(arrayOfByte4, fxi);
          for (boolean bool4 = true; bool4; bool4 = fu.a(locala5, localfu, a(locala5)));
          this.fHR = localfu;
        }
        this.fHS = true;
        m = 1;
        continue;
        LinkedList localLinkedList3 = locala1.oL(i);
        int i2 = localLinkedList3.size();
        for (int i3 = 0; i3 < i2; i3++)
        {
          byte[] arrayOfByte3 = (byte[])localLinkedList3.get(i3);
          gc localgc = new gc();
          a.a.a.a.a locala4 = new a.a.a.a.a(arrayOfByte3, fxi);
          for (boolean bool3 = true; bool3; bool3 = gc.a(locala4, localgc, a(locala4)));
          this.fHT = localgc;
        }
        this.fHU = true;
        m = 1;
        continue;
        this.fHV = locala1.aPS();
        this.fHW = true;
        m = 1;
        continue;
        this.title = locala1.aPS();
        this.fGE = true;
        m = 1;
        continue;
        this.desc = locala1.aPS();
        this.fGF = true;
        m = 1;
        continue;
        this.fHX = locala1.aPW();
        this.fHY = true;
        m = 1;
        continue;
        this.fHZ = locala1.aPQ();
        this.fIa = true;
        m = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          fw localfw = new fw();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = fw.a(locala3, localfw, a(locala3)));
          this.fIb = localfw;
        }
        this.fIc = true;
        m = 1;
        continue;
        this.fId = locala1.aPW();
        this.fIe = true;
        m = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int j = localLinkedList1.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(k);
          gb localgb = new gb();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = gb.a(locala2, localgb, a(locala2)));
          this.fIf = localgb;
        }
        this.fIg = true;
        m = 1;
      }
    }
    return this;
  }

  public final fy axI()
  {
    return this.fHN;
  }

  public final LinkedList axJ()
  {
    return this.fHP;
  }

  public final fu axK()
  {
    return this.fHR;
  }

  public final gc axL()
  {
    return this.fHT;
  }

  public final String axM()
  {
    return this.fHV;
  }

  public final long axN()
  {
    return this.fHX;
  }

  public final int axO()
  {
    return this.fHZ;
  }

  public final fw axP()
  {
    return this.fIb;
  }

  public final long axQ()
  {
    return this.fId;
  }

  public final gb axR()
  {
    return this.fIf;
  }

  public final fx bK(long paramLong)
  {
    this.fHX = paramLong;
    this.fHY = true;
    return this;
  }

  public final fx bL(long paramLong)
  {
    this.fId = paramLong;
    this.fIe = true;
    return this;
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final fx lr(int paramInt)
  {
    this.fHZ = paramInt;
    this.fIa = true;
    return this;
  }

  public final int ns()
  {
    fy localfy = this.fHN;
    int i = 0;
    if (localfy != null)
      i = 0 + a.a.a.a.bs(1, this.fHN.ns());
    int j = i + a.a.a.a.b(2, 8, this.fHP);
    if (this.fHR != null)
      j += a.a.a.a.bs(3, this.fHR.ns());
    if (this.fHT != null)
      j += a.a.a.a.bs(4, this.fHT.ns());
    if (this.fHV != null)
      j += a.a.a.a.z(5, this.fHV);
    if (this.title != null)
      j += a.a.a.a.z(6, this.title);
    if (this.desc != null)
      j += a.a.a.a.z(7, this.desc);
    if (this.fHY == true)
      j += a.a.a.a.i(8, this.fHX);
    if (this.fIa == true)
      j += a.a.a.a.br(9, this.fHZ);
    if (this.fIb != null)
      j += a.a.a.a.bs(10, this.fIb.ns());
    if (this.fIe == true)
      j += a.a.a.a.i(11, this.fId);
    if (this.fIf != null)
      j += a.a.a.a.bs(12, this.fIf.ns());
    return j;
  }

  public final fx rX(String paramString)
  {
    this.fHV = paramString;
    this.fHW = true;
    return this;
  }

  public final fx rY(String paramString)
  {
    this.title = paramString;
    this.fGE = true;
    return this;
  }

  public final fx rZ(String paramString)
  {
    this.desc = paramString;
    this.fGF = true;
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fx
 * JD-Core Version:    0.6.2
 */