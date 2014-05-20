package com.tencent.mm.protocal.a;

public final class zn extends com.tencent.mm.am.a
{
  public int fWx;
  public int fZO;

  public static boolean a(a.a.a.a.a parama, zn paramzn, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramzn.fZO = parama.aPQ();
      return true;
    case 2:
    }
    paramzn.fWx = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fZO);
    parama.by(2, this.fWx);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fZO) + a.a.a.a.br(2, this.fWx);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zn
 * JD-Core Version:    0.6.2
 */