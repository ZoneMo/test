package com.tencent.mm.plugin.chatroom.b;

import java.util.LinkedList;

public final class a extends com.tencent.mm.am.a
{
  public int bOY;
  public LinkedList cWo = new LinkedList();
  public String cWp;
  public int cWq;
  public int cWr;
  public int status;
  public int type;
  public int yx;

  public final a I(byte[] paramArrayOfByte)
  {
    this.cWo.clear();
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
          b localb = new b();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = b.a(locala2, localb, a(locala2)));
          this.cWo.add(localb);
        }
        j = 1;
        continue;
        this.bOY = locala1.aPQ();
        j = 1;
        continue;
        this.type = locala1.aPQ();
        j = 1;
        continue;
        this.status = locala1.aPQ();
        j = 1;
        continue;
        this.yx = locala1.aPQ();
        j = 1;
        continue;
        this.cWp = locala1.aPS();
        j = 1;
        continue;
        this.cWq = locala1.aPQ();
        j = 1;
        continue;
        this.cWr = locala1.aPQ();
        j = 1;
      }
    }
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, 8, this.cWo);
    parama.by(2, this.bOY);
    parama.by(3, this.type);
    parama.by(4, this.status);
    parama.by(5, this.yx);
    if (this.cWp != null)
      parama.A(6, this.cWp);
    parama.by(7, this.cWq);
    parama.by(8, this.cWr);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.b(1, 8, this.cWo) + a.a.a.a.br(2, this.bOY) + a.a.a.a.br(3, this.type) + a.a.a.a.br(4, this.status) + a.a.a.a.br(5, this.yx);
    if (this.cWp != null)
      i += a.a.a.a.z(6, this.cWp);
    return i + a.a.a.a.br(7, this.cWq) + a.a.a.a.br(8, this.cWr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.b.a
 * JD-Core Version:    0.6.2
 */