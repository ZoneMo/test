package com.tencent.mm.plugin.d.a;

import com.tencent.mm.protocal.a.wa;
import java.util.LinkedList;

public final class i extends com.tencent.mm.am.a
{
  public int dZc;
  public LinkedList dZp = new LinkedList();

  public final i T(byte[] paramArrayOfByte)
  {
    this.dZp.clear();
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
      }
      while (true)
      {
        if (m == 0)
          locala1.aPZ();
        i = a(locala1);
        break;
        this.dZc = locala1.aPQ();
        m = 1;
        continue;
        LinkedList localLinkedList = locala1.oL(i);
        int j = localLinkedList.size();
        for (int k = 0; k < j; k++)
        {
          byte[] arrayOfByte = (byte[])localLinkedList.get(k);
          wa localwa = new wa();
          a.a.a.a.a locala2 = new a.a.a.a.a(arrayOfByte, fxi);
          for (boolean bool = true; bool; bool = wa.a(locala2, localwa, a(locala2)));
          this.dZp.add(localwa);
        }
        m = 1;
      }
    }
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.dZc);
    parama.c(2, 8, this.dZp);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.dZc) + a.a.a.a.b(2, 8, this.dZp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.a.i
 * JD-Core Version:    0.6.2
 */