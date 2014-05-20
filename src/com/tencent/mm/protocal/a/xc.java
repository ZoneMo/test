package com.tencent.mm.protocal.a;

public final class xc extends com.tencent.mm.am.a
{
  public long fYc;
  public long fYd;
  public int fYe;

  public static boolean a(a.a.a.a.a parama, xc paramxc, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramxc.fYc = parama.aPW();
      return true;
    case 2:
      paramxc.fYd = parama.aPW();
      return true;
    case 3:
    }
    paramxc.fYe = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.k(1, this.fYc);
    parama.k(2, this.fYd);
    parama.by(3, this.fYe);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.i(1, this.fYc) + a.a.a.a.i(2, this.fYd) + a.a.a.a.br(3, this.fYe);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xc
 * JD-Core Version:    0.6.2
 */