package com.tencent.mm.protocal.a;

import a.a.a.b;
import java.util.LinkedList;

public final class ok extends com.tencent.mm.am.a
{
  public rw fEI;
  public int fPn;
  public int fPy;
  public int fPz;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEI == null)
      throw new b("Not all required fields were included");
    if (this.fEI != null)
    {
      parama.bv(1, this.fEI.ns());
      this.fEI.a(parama);
    }
    parama.by(2, this.fPy);
    parama.by(3, this.fPz);
    parama.by(4, this.fPn);
  }

  public final ok bz(byte[] paramArrayOfByte)
  {
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
      }
      while (true)
      {
        if (j == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        LinkedList localLinkedList = locala1.oL(i);
        int k = localLinkedList.size();
        for (int m = 0; m < k; m++)
        {
          byte[] arrayOfByte = (byte[])localLinkedList.get(m);
          rw localrw = new rw();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = rw.a(locala2, localrw, a(locala2)));
          this.fEI = localrw;
        }
        j = 1;
        continue;
        this.fPy = locala1.aPQ();
        j = 1;
        continue;
        this.fPz = locala1.aPQ();
        j = 1;
        continue;
        this.fPn = locala1.aPQ();
        j = 1;
      }
    }
    if (this.fEI == null)
      throw new b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    return i + a.a.a.a.br(2, this.fPy) + a.a.a.a.br(3, this.fPz) + a.a.a.a.br(4, this.fPn);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ok
 * JD-Core Version:    0.6.2
 */