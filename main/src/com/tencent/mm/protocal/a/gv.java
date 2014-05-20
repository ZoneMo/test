package com.tencent.mm.protocal.a;

public final class gv extends com.tencent.mm.am.a
{
  public int fzh;
  public int fzi;
  public String fzm;
  public int fzo;
  public int fzr;

  public static boolean a(a.a.a.a.a parama, gv paramgv, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramgv.fzo = parama.aPQ();
      return true;
    case 2:
      paramgv.fzr = parama.aPQ();
      return true;
    case 3:
      paramgv.fzm = parama.aPS();
      return true;
    case 4:
      paramgv.fzh = parama.aPQ();
      return true;
    case 5:
    }
    paramgv.fzi = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fzo);
    parama.by(2, this.fzr);
    if (this.fzm != null)
      parama.A(3, this.fzm);
    parama.by(4, this.fzh);
    parama.by(5, this.fzi);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fzo) + a.a.a.a.br(2, this.fzr);
    if (this.fzm != null)
      i += a.a.a.a.z(3, this.fzm);
    return i + a.a.a.a.br(4, this.fzh) + a.a.a.a.br(5, this.fzi);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gv
 * JD-Core Version:    0.6.2
 */