package com.tencent.mm.plugin.backup.a;

import java.util.LinkedList;

public final class c extends com.tencent.mm.am.a
{
  public int cIK;
  public int cIZ;
  public String cJa;
  public int cJb;
  public int cJc;
  public LinkedList cJd = new LinkedList();
  public LinkedList cJe = new LinkedList();
  public int cJf;
  public int cJg;

  public final c D(byte[] paramArrayOfByte)
  {
    this.cJd.clear();
    this.cJe.clear();
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    int i = a(locala);
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
          locala.aPZ();
        i = a(locala);
        break;
        this.cIZ = locala.aPQ();
        j = 1;
        continue;
        this.cJa = locala.aPS();
        j = 1;
        continue;
        this.cJb = locala.aPQ();
        j = 1;
        continue;
        this.cJc = locala.aPQ();
        j = 1;
        continue;
        this.cJd.add(locala.aPS());
        j = 1;
        continue;
        this.cJe.add(locala.aPS());
        j = 1;
        continue;
        this.cJf = locala.aPQ();
        j = 1;
        continue;
        this.cIK = locala.aPQ();
        j = 1;
        continue;
        this.cJg = locala.aPQ();
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
    parama.by(4, this.cJc);
    parama.c(5, 1, this.cJd);
    parama.c(6, 1, this.cJe);
    parama.by(7, this.cJf);
    parama.by(8, this.cIK);
    parama.by(9, this.cJg);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.cIZ);
    if (this.cJa != null)
      i += a.a.a.a.z(2, this.cJa);
    return i + a.a.a.a.br(3, this.cJb) + a.a.a.a.br(4, this.cJc) + a.a.a.a.b(5, 1, this.cJd) + a.a.a.a.b(6, 1, this.cJe) + a.a.a.a.br(7, this.cJf) + a.a.a.a.br(8, this.cIK) + a.a.a.a.br(9, this.cJg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.a.c
 * JD-Core Version:    0.6.2
 */