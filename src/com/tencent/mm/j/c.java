package com.tencent.mm.j;

import java.util.LinkedList;

public final class c extends com.tencent.mm.am.a
{
  public String bQs;
  public String bQt;
  public String bXF;
  public LinkedList cgS = null;
  public LinkedList che = new LinkedList();
  public String name;
  public int type;

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.type);
    if (this.name != null)
      parama.A(2, this.name);
    if (this.bQs != null)
      parama.A(3, this.bQs);
    if (this.bQt != null)
      parama.A(4, this.bQt);
    if (this.bXF != null)
      parama.A(5, this.bXF);
    parama.c(6, 8, this.che);
  }

  public final c m(byte[] paramArrayOfByte)
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
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.type = locala1.aPQ();
        m = 1;
        continue;
        this.name = locala1.aPS();
        m = 1;
        continue;
        this.bQs = locala1.aPS();
        m = 1;
        continue;
        this.bQt = locala1.aPS();
        m = 1;
        continue;
        this.bXF = locala1.aPS();
        m = 1;
        continue;
        LinkedList localLinkedList = locala1.oL(i);
        int j = localLinkedList.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte = (byte[])localLinkedList.get(k);
          d locald = new d();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = d.a(locala2, locald, a(locala2)));
          this.che.add(locald);
        }
        m = 1;
      }
    }
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.type);
    if (this.name != null)
      i += a.a.a.a.z(2, this.name);
    if (this.bQs != null)
      i += a.a.a.a.z(3, this.bQs);
    if (this.bQt != null)
      i += a.a.a.a.z(4, this.bQt);
    if (this.bXF != null)
      i += a.a.a.a.z(5, this.bXF);
    return i + a.a.a.a.b(6, 8, this.che);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.j.c
 * JD-Core Version:    0.6.2
 */