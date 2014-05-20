package com.tencent.mm.protocal.a;

public final class os extends com.tencent.mm.am.a
{
  public String fQh;
  public String fQi;
  public int fQj;
  public int fQk;
  public int fQl;
  public int fQm;

  public static boolean a(a.a.a.a.a parama, os paramos, int paramInt)
  {
    switch (paramInt)
    {
    case 6:
    default:
      return false;
    case 1:
      paramos.fQh = parama.aPS();
      return true;
    case 2:
      paramos.fQi = parama.aPS();
      return true;
    case 3:
      paramos.fQj = parama.aPQ();
      return true;
    case 4:
      paramos.fQk = parama.aPQ();
      return true;
    case 5:
      paramos.fQl = parama.aPQ();
      return true;
    case 7:
    }
    paramos.fQm = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fQh != null)
      parama.A(1, this.fQh);
    if (this.fQi != null)
      parama.A(2, this.fQi);
    parama.by(3, this.fQj);
    parama.by(4, this.fQk);
    parama.by(5, this.fQl);
    parama.by(7, this.fQm);
  }

  public final int ns()
  {
    String str = this.fQh;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fQh);
    if (this.fQi != null)
      i += a.a.a.a.z(2, this.fQi);
    return i + a.a.a.a.br(3, this.fQj) + a.a.a.a.br(4, this.fQk) + a.a.a.a.br(5, this.fQl) + a.a.a.a.br(7, this.fQm);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.os
 * JD-Core Version:    0.6.2
 */