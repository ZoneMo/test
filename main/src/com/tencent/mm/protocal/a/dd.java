package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class dd extends com.tencent.mm.am.a
{
  public int cqq;
  public String cqt;
  public String eBo;
  public String fDe;
  public String fEh;
  public String fEi;
  public int fEj;
  public int fEk;
  public String fEl;
  public int fEm;
  public String fEn;
  public String fEo;
  public int fEp;
  public int fEq;
  public LinkedList fEr = new LinkedList();
  public String fEs;
  public int fEt;
  public int fEu;
  public String fEv;
  public int fEw;
  public int fEx;
  public rv fzx;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzx == null)
      throw new b("Not all required fields were included");
    if (this.eBo != null)
      parama.A(1, this.eBo);
    if (this.fDe != null)
      parama.A(2, this.fDe);
    if (this.fEh != null)
      parama.A(3, this.fEh);
    if (this.fEi != null)
      parama.A(4, this.fEi);
    parama.by(5, this.cqq);
    if (this.fzx != null)
    {
      parama.bv(6, this.fzx.ns());
      this.fzx.a(parama);
    }
    parama.by(7, this.fEj);
    parama.by(8, this.fEk);
    if (this.fEl != null)
      parama.A(9, this.fEl);
    parama.by(10, this.fEm);
    if (this.fEn != null)
      parama.A(11, this.fEn);
    if (this.fEo != null)
      parama.A(12, this.fEo);
    parama.by(13, this.fEp);
    parama.by(14, this.fEq);
    parama.c(15, 8, this.fEr);
    if (this.fEs != null)
      parama.A(16, this.fEs);
    parama.by(17, this.fEt);
    parama.by(18, this.fEu);
    if (this.fEv != null)
      parama.A(19, this.fEv);
    parama.by(20, this.fEw);
    parama.by(21, this.fEx);
    if (this.cqt != null)
      parama.A(22, this.cqt);
  }

  public final dd aL(byte[] paramArrayOfByte)
  {
    this.fEr.clear();
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
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.eBo = locala1.aPS();
        j = 1;
        continue;
        this.fDe = locala1.aPS();
        j = 1;
        continue;
        this.fEh = locala1.aPS();
        j = 1;
        continue;
        this.fEi = locala1.aPS();
        j = 1;
        continue;
        this.cqq = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          rv localrv = new rv();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = rv.a(locala3, localrv, a(locala3)));
          this.fzx = localrv;
        }
        j = 1;
        continue;
        this.fEj = locala1.aPQ();
        j = 1;
        continue;
        this.fEk = locala1.aPQ();
        j = 1;
        continue;
        this.fEl = locala1.aPS();
        j = 1;
        continue;
        this.fEm = locala1.aPQ();
        j = 1;
        continue;
        this.fEn = locala1.aPS();
        j = 1;
        continue;
        this.fEo = locala1.aPS();
        j = 1;
        continue;
        this.fEp = locala1.aPQ();
        j = 1;
        continue;
        this.fEq = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          ru localru = new ru();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = ru.a(locala2, localru, a(locala2)));
          this.fEr.add(localru);
        }
        j = 1;
        continue;
        this.fEs = locala1.aPS();
        j = 1;
        continue;
        this.fEt = locala1.aPQ();
        j = 1;
        continue;
        this.fEu = locala1.aPQ();
        j = 1;
        continue;
        this.fEv = locala1.aPS();
        j = 1;
        continue;
        this.fEw = locala1.aPQ();
        j = 1;
        continue;
        this.fEx = locala1.aPQ();
        j = 1;
        continue;
        this.cqt = locala1.aPS();
        j = 1;
      }
    }
    if (this.fzx == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    if (this.fDe != null)
      i += a.a.a.a.z(2, this.fDe);
    if (this.fEh != null)
      i += a.a.a.a.z(3, this.fEh);
    if (this.fEi != null)
      i += a.a.a.a.z(4, this.fEi);
    int j = i + a.a.a.a.br(5, this.cqq);
    if (this.fzx != null)
      j += a.a.a.a.bs(6, this.fzx.ns());
    int k = j + a.a.a.a.br(7, this.fEj) + a.a.a.a.br(8, this.fEk);
    if (this.fEl != null)
      k += a.a.a.a.z(9, this.fEl);
    int m = k + a.a.a.a.br(10, this.fEm);
    if (this.fEn != null)
      m += a.a.a.a.z(11, this.fEn);
    if (this.fEo != null)
      m += a.a.a.a.z(12, this.fEo);
    int n = m + a.a.a.a.br(13, this.fEp) + a.a.a.a.br(14, this.fEq) + a.a.a.a.b(15, 8, this.fEr);
    if (this.fEs != null)
      n += a.a.a.a.z(16, this.fEs);
    int i1 = n + a.a.a.a.br(17, this.fEt) + a.a.a.a.br(18, this.fEu);
    if (this.fEv != null)
      i1 += a.a.a.a.z(19, this.fEv);
    int i2 = i1 + a.a.a.a.br(20, this.fEw) + a.a.a.a.br(21, this.fEx);
    if (this.cqt != null)
      i2 += a.a.a.a.z(22, this.cqt);
    return i2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dd
 * JD-Core Version:    0.6.2
 */