package com.tencent.mm.plugin.backup.a;

import a.a.a.b;
import com.tencent.mm.protocal.a.ae;
import java.util.LinkedList;

public final class d extends com.tencent.mm.am.a
{
  public String cJh;
  public int cJi;
  public LinkedList cJj = new LinkedList();
  public int cJk;

  public static boolean a(a.a.a.a.a parama, d paramd, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramd.cJh = parama.aPS();
      return true;
    case 2:
      paramd.cJi = parama.aPQ();
      return true;
    case 3:
      LinkedList localLinkedList = parama.oL(paramInt);
      int i = localLinkedList.size();
      for (int j = 0; j < i; j++)
      {
        byte[] arrayOfByte = (byte[])localLinkedList.get(j);
        ae localae = new ae();
        a.a.a.a.a locala = new a.a.a.a.a(arrayOfByte, fxi);
        for (boolean bool = true; bool; bool = ae.a(locala, localae, a(locala)));
        paramd.cJj.add(localae);
      }
      return true;
    case 4:
    }
    paramd.cJk = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.cJh == null)
      throw new b("Not all required fields were included");
    if (this.cJh != null)
      parama.A(1, this.cJh);
    parama.by(2, this.cJi);
    parama.c(3, 8, this.cJj);
    parama.by(4, this.cJk);
  }

  public final int ns()
  {
    String str = this.cJh;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.cJh);
    return i + a.a.a.a.br(2, this.cJi) + a.a.a.a.b(3, 8, this.cJj) + a.a.a.a.br(4, this.cJk);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.a.d
 * JD-Core Version:    0.6.2
 */