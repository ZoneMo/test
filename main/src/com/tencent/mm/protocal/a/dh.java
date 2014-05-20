package com.tencent.mm.protocal.a;

public final class dh extends com.tencent.mm.am.a
{
  public String fED;
  public int fEE;
  public int fzo;
  public int fzr;

  public static boolean a(a.a.a.a.a parama, dh paramdh, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramdh.fzo = parama.aPQ();
      return true;
    case 2:
      paramdh.fED = parama.aPS();
      return true;
    case 3:
      paramdh.fzr = parama.aPQ();
      return true;
    case 4:
    }
    paramdh.fEE = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fzo);
    if (this.fED != null)
      parama.A(2, this.fED);
    parama.by(3, this.fzr);
    parama.by(4, this.fEE);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fzo);
    if (this.fED != null)
      i += a.a.a.a.z(2, this.fED);
    return i + a.a.a.a.br(3, this.fzr) + a.a.a.a.br(4, this.fEE);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.dh
 * JD-Core Version:    0.6.2
 */