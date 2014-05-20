package com.tencent.mm.protocal.a;

import java.util.LinkedList;

public final class dv extends com.tencent.mm.am.a
{
  public int fAC;
  public LinkedList fBb = new LinkedList();
  public rw fEI;

  public final void a(a.a.a.c.a parama)
  {
    if (this.fEI == null)
      throw new a.a.a.b("Not all required fields were included");
    if (this.fEI != null)
    {
      parama.bv(1, this.fEI.ns());
      this.fEI.a(parama);
    }
    parama.by(2, this.fAC);
    parama.b(3, this.fBb);
  }

  public final dv aQ(byte[] paramArrayOfByte)
  {
    this.fBb.clear();
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
        this.fAC = locala1.aPQ();
        j = 1;
        continue;
        this.fBb = new a.a.a.a.a(locala1.aPX().getBytes(), fxi).aPR();
        j = 1;
      }
    }
    if (this.fEI == null)
      throw new a.a.a.b("Not all required fields were included");
    return this;
  }

  public final int ns()
  {
    rw localrw = this.fEI;
    int i = 0;
    if (localrw != null)
      i = 0 + a.a.a.a.bs(1, this.fEI.ns());
    return i + a.a.a.a.br(2, this.fAC) + a.a.a.a.a(3, this.fBb);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dv
 * JD-Core Version:    0.6.2
 */