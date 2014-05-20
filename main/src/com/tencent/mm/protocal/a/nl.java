package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class nl extends com.tencent.mm.am.a
{
  public int cky;
  public int fOA;
  public LinkedList fOB = new LinkedList();
  public int fOC;
  public int fOD;
  public int fOp;
  public int fOu;
  public int fOv;
  public LinkedList fOw = new LinkedList();
  public LinkedList fOx = new LinkedList();
  public int fOy;
  public long fOz;
  public String fzj;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fOu);
    parama.by(2, this.fOv);
    parama.by(3, this.fOp);
    if (this.fzj != null)
      parama.A(4, this.fzj);
    parama.c(5, 8, this.fOw);
    parama.c(6, 8, this.fOx);
    parama.by(7, this.fOy);
    parama.by(8, this.cky);
    parama.k(9, this.fOz);
    parama.by(10, this.fOA);
    parama.c(11, 3, this.fOB);
    parama.by(12, this.fOC);
    parama.by(13, this.fOD);
  }

  public final nl bu(byte[] paramArrayOfByte)
  {
    this.fOw.clear();
    this.fOx.clear();
    this.fOB.clear();
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
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.fOu = locala1.aPQ();
        j = 1;
        continue;
        this.fOv = locala1.aPQ();
        j = 1;
        continue;
        this.fOp = locala1.aPQ();
        j = 1;
        continue;
        this.fzj = locala1.aPS();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          na localna = new na();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = na.a(locala3, localna, a(locala3)));
          this.fOw.add(localna);
        }
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          vs localvs = new vs();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = vs.a(locala2, localvs, a(locala2)));
          this.fOx.add(localvs);
        }
        j = 1;
        continue;
        this.fOy = locala1.aPQ();
        j = 1;
        continue;
        this.cky = locala1.aPQ();
        j = 1;
        continue;
        this.fOz = locala1.aPW();
        j = 1;
        continue;
        this.fOA = locala1.aPQ();
        j = 1;
        continue;
        this.fOB.add(Long.valueOf(locala1.aPW()));
        j = 1;
        continue;
        this.fOC = locala1.aPQ();
        j = 1;
        continue;
        this.fOD = locala1.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fOu) + a.a.a.a.br(2, this.fOv) + a.a.a.a.br(3, this.fOp);
    if (this.fzj != null)
      i += a.a.a.a.z(4, this.fzj);
    return i + a.a.a.a.b(5, 8, this.fOw) + a.a.a.a.b(6, 8, this.fOx) + a.a.a.a.br(7, this.fOy) + a.a.a.a.br(8, this.cky) + a.a.a.a.i(9, this.fOz) + a.a.a.a.br(10, this.fOA) + a.a.a.a.b(11, 3, this.fOB) + a.a.a.a.br(12, this.fOC) + a.a.a.a.br(13, this.fOD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nl
 * JD-Core Version:    0.6.2
 */