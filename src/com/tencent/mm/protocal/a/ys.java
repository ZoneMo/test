package com.tencent.mm.protocal.a;

public final class ys extends com.tencent.mm.am.a
{
  public String eBo;
  public int fJd;
  public int fJf;

  public static boolean a(a.a.a.a.a parama, ys paramys, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramys.eBo = parama.aPS();
      return true;
    case 2:
      paramys.fJd = parama.aPQ();
      return true;
    case 3:
    }
    paramys.fJf = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    parama.by(2, this.fJd);
    parama.by(3, this.fJf);
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    return i + a.a.a.a.br(2, this.fJd) + a.a.a.a.br(3, this.fJf);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ys
 * JD-Core Version:    0.6.2
 */