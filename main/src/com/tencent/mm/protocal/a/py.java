package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class py extends com.tencent.mm.am.a
{
  public String dDf;
  public int fCV;
  public String fSh;
  public int fSi;
  public int fSn;
  public String fSo;
  public String fSp;
  public int fSq;
  public String fSr;
  public int fSs;
  public String fSt;
  public String fSu;
  public String fSv;
  public String fSw;
  public LinkedList fSx = new LinkedList();
  public String fyV;
  public int fzy;

  public static boolean a(a.a.a.a.a parama, py parampy, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parampy.fSh = parama.aPS();
      return true;
    case 2:
      parampy.fSn = parama.aPQ();
      return true;
    case 3:
      parampy.fSo = parama.aPS();
      return true;
    case 4:
      parampy.fzy = parama.aPQ();
      return true;
    case 5:
      parampy.fSp = parama.aPS();
      return true;
    case 6:
      parampy.fSq = parama.aPQ();
      return true;
    case 7:
      parampy.fSr = parama.aPS();
      return true;
    case 8:
      parampy.fSs = parama.aPQ();
      return true;
    case 9:
      parampy.fSi = parama.aPQ();
      return true;
    case 10:
      parampy.fSt = parama.aPS();
      return true;
    case 11:
      parampy.fyV = parama.aPS();
      return true;
    case 12:
      parampy.dDf = parama.aPS();
      return true;
    case 13:
      parampy.fSu = parama.aPS();
      return true;
    case 14:
      parampy.fSv = parama.aPS();
      return true;
    case 15:
      parampy.fSw = parama.aPS();
      return true;
    case 16:
      parampy.fCV = parama.aPQ();
      return true;
    case 17:
    }
    LinkedList localLinkedList = parama.oL(paramInt);
    int i = localLinkedList.size();
    for (int j = 0; j < i; j++)
    {
      byte[] arrayOfByte = (byte[])localLinkedList.get(j);
      ug localug = new ug();
      a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
      for (boolean bool = true; bool; bool = ug.a(locala, localug, a(locala)));
      parampy.fSx.add(localug);
    }
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fSh != null)
      parama.A(1, this.fSh);
    parama.by(2, this.fSn);
    if (this.fSo != null)
      parama.A(3, this.fSo);
    parama.by(4, this.fzy);
    if (this.fSp != null)
      parama.A(5, this.fSp);
    parama.by(6, this.fSq);
    if (this.fSr != null)
      parama.A(7, this.fSr);
    parama.by(8, this.fSs);
    parama.by(9, this.fSi);
    if (this.fSt != null)
      parama.A(10, this.fSt);
    if (this.fyV != null)
      parama.A(11, this.fyV);
    if (this.dDf != null)
      parama.A(12, this.dDf);
    if (this.fSu != null)
      parama.A(13, this.fSu);
    if (this.fSv != null)
      parama.A(14, this.fSv);
    if (this.fSw != null)
      parama.A(15, this.fSw);
    parama.by(16, this.fCV);
    parama.c(17, 8, this.fSx);
  }

  public final int ns()
  {
    String str = this.fSh;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fSh);
    int j = i + a.a.a.a.br(2, this.fSn);
    if (this.fSo != null)
      j += a.a.a.a.z(3, this.fSo);
    int k = j + a.a.a.a.br(4, this.fzy);
    if (this.fSp != null)
      k += a.a.a.a.z(5, this.fSp);
    int m = k + a.a.a.a.br(6, this.fSq);
    if (this.fSr != null)
      m += a.a.a.a.z(7, this.fSr);
    int n = m + a.a.a.a.br(8, this.fSs) + a.a.a.a.br(9, this.fSi);
    if (this.fSt != null)
      n += a.a.a.a.z(10, this.fSt);
    if (this.fyV != null)
      n += a.a.a.a.z(11, this.fyV);
    if (this.dDf != null)
      n += a.a.a.a.z(12, this.dDf);
    if (this.fSu != null)
      n += a.a.a.a.z(13, this.fSu);
    if (this.fSv != null)
      n += a.a.a.a.z(14, this.fSv);
    if (this.fSw != null)
      n += a.a.a.a.z(15, this.fSw);
    return n + a.a.a.a.br(16, this.fCV) + a.a.a.a.b(17, 8, this.fSx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.py
 * JD-Core Version:    0.6.2
 */