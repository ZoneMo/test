package com.tencent.mm.aq;

import java.util.LinkedList;

public final class a extends com.tencent.mm.am.a
{
  public int gjK;
  public LinkedList gjL = new LinkedList();
  public LinkedList gjM = new LinkedList();
  public LinkedList gjN = new LinkedList();

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.gjK);
    parama.c(2, 2, this.gjL);
    parama.c(3, 2, this.gjM);
    parama.c(4, 2, this.gjN);
  }

  public final a cu(byte[] paramArrayOfByte)
  {
    this.gjL.clear();
    this.gjM.clear();
    this.gjN.clear();
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
      }
      while (true)
      {
        if (j == 0)
          locala.aPZ();
        i = a(locala);
        break;
        this.gjK = locala.aPQ();
        j = 1;
        continue;
        this.gjL.add(Integer.valueOf(locala.aPQ()));
        j = 1;
        continue;
        this.gjM.add(Integer.valueOf(locala.aPQ()));
        j = 1;
        continue;
        this.gjN.add(Integer.valueOf(locala.aPQ()));
        j = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.gjK) + a.a.a.a.b(2, 2, this.gjL) + a.a.a.a.b(3, 2, this.gjM) + a.a.a.a.b(4, 2, this.gjN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.aq.a
 * JD-Core Version:    0.6.2
 */