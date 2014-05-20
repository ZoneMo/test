package com.tencent.mm.ab;

import java.util.LinkedList;

public final class d extends com.tencent.mm.am.a
{
  public LinkedList cvI = new LinkedList();
  public int cvJ;
  public int cvK;
  public int cvL;
  public int cvM;
  public String name;

  public static boolean a(a.a.a.a.a parama, d paramd, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramd.cvI.add(parama.aPS());
      return true;
    case 2:
      paramd.name = parama.aPS();
      return true;
    case 3:
      paramd.cvJ = parama.aPQ();
      return true;
    case 4:
      paramd.cvK = parama.aPQ();
      return true;
    case 5:
      paramd.cvL = parama.aPQ();
      return true;
    case 6:
    }
    paramd.cvM = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, 1, this.cvI);
    if (this.name != null)
      parama.A(2, this.name);
    parama.by(3, this.cvJ);
    parama.by(4, this.cvK);
    parama.by(5, this.cvL);
    parama.by(6, this.cvM);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.b(1, 1, this.cvI);
    if (this.name != null)
      i += a.a.a.a.z(2, this.name);
    return i + a.a.a.a.br(3, this.cvJ) + a.a.a.a.br(4, this.cvK) + a.a.a.a.br(5, this.cvL) + a.a.a.a.br(6, this.cvM);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.d
 * JD-Core Version:    0.6.2
 */