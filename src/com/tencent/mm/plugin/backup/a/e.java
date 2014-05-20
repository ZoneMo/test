package com.tencent.mm.plugin.backup.a;

import java.util.LinkedList;

public final class e extends com.tencent.mm.am.a
{
  public int cIK;
  public int cIZ;
  public String cJa;
  public int cJb;
  public int cJg;
  public LinkedList cJl = new LinkedList();
  public LinkedList cJm = new LinkedList();
  public LinkedList cJn = new LinkedList();
  public String cJo;
  public int cJp;
  public int cJq;
  public int cJr;
  public int cJs;

  public final e E(byte[] paramArrayOfByte)
  {
    this.cJl.clear();
    this.cJm.clear();
    this.cJn.clear();
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
        this.cIZ = locala1.aPQ();
        j = 1;
        continue;
        this.cJa = locala1.aPS();
        j = 1;
        continue;
        this.cJb = locala1.aPQ();
        j = 1;
        continue;
        LinkedList localLinkedList2 = locala1.oL(i);
        int n = localLinkedList2.size();
        for (int i1 = 0; i1 < n; i1++)
        {
          byte[] arrayOfByte2 = (byte[])localLinkedList2.get(i1);
          d locald = new d();
          a.a.a.a.a locala3 = new a.a.a.a.a(arrayOfByte2, fxi);
          for (boolean bool2 = true; bool2; bool2 = d.a(locala3, locald, a(locala3)));
          this.cJl.add(locald);
        }
        j = 1;
        continue;
        LinkedList localLinkedList1 = locala1.oL(i);
        int k = localLinkedList1.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte1 = (byte[])localLinkedList1.get(m);
          g localg = new g();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte1, fxi);
          for (boolean bool1 = true; bool1; bool1 = g.a(locala2, localg, a(locala2)));
          this.cJm.add(localg);
        }
        j = 1;
        continue;
        this.cJn.add(locala1.aPS());
        j = 1;
        continue;
        this.cJo = locala1.aPS();
        j = 1;
        continue;
        this.cJp = locala1.aPQ();
        j = 1;
        continue;
        this.cJq = locala1.aPQ();
        j = 1;
        continue;
        this.cIK = locala1.aPQ();
        j = 1;
        continue;
        this.cJg = locala1.aPQ();
        j = 1;
        continue;
        this.cJr = locala1.aPQ();
        j = 1;
        continue;
        this.cJs = locala1.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.cIZ);
    if (this.cJa != null)
      parama.A(2, this.cJa);
    parama.by(3, this.cJb);
    parama.c(4, 8, this.cJl);
    parama.c(5, 8, this.cJm);
    parama.c(6, 1, this.cJn);
    if (this.cJo != null)
      parama.A(7, this.cJo);
    parama.by(8, this.cJp);
    parama.by(9, this.cJq);
    parama.by(10, this.cIK);
    parama.by(11, this.cJg);
    parama.by(12, this.cJr);
    parama.by(13, this.cJs);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.cIZ);
    if (this.cJa != null)
      i += a.a.a.a.z(2, this.cJa);
    int j = i + a.a.a.a.br(3, this.cJb) + a.a.a.a.b(4, 8, this.cJl) + a.a.a.a.b(5, 8, this.cJm) + a.a.a.a.b(6, 1, this.cJn);
    if (this.cJo != null)
      j += a.a.a.a.z(7, this.cJo);
    return j + a.a.a.a.br(8, this.cJp) + a.a.a.a.br(9, this.cJq) + a.a.a.a.br(10, this.cIK) + a.a.a.a.br(11, this.cJg) + a.a.a.a.br(12, this.cJr) + a.a.a.a.br(13, this.cJs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.a.e
 * JD-Core Version:    0.6.2
 */