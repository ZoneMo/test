package com.tencent.mm.protocal.a;

public final class fv extends com.tencent.mm.am.a
{
  public int fzf;
  public int fzg;
  public int fzh;
  public int fzi;
  public String fzm;
  public int fzr;

  public static boolean a(a.a.a.a.a parama, fv paramfv, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfv.fzf = parama.aPQ();
      return true;
    case 2:
      paramfv.fzr = parama.aPQ();
      return true;
    case 3:
      paramfv.fzm = parama.aPS();
      return true;
    case 4:
      paramfv.fzg = parama.aPQ();
      return true;
    case 5:
      paramfv.fzh = parama.aPQ();
      return true;
    case 6:
    }
    paramfv.fzi = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fzf);
    parama.by(2, this.fzr);
    if (this.fzm != null)
      parama.A(3, this.fzm);
    parama.by(4, this.fzg);
    parama.by(5, this.fzh);
    parama.by(6, this.fzi);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fzf) + a.a.a.a.br(2, this.fzr);
    if (this.fzm != null)
      i += a.a.a.a.z(3, this.fzm);
    return i + a.a.a.a.br(4, this.fzg) + a.a.a.a.br(5, this.fzh) + a.a.a.a.br(6, this.fzi);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fv
 * JD-Core Version:    0.6.2
 */