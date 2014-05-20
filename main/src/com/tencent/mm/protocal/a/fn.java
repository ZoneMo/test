package com.tencent.mm.protocal.a;

public final class fn extends com.tencent.mm.am.a
{
  public String Th;
  public int fER;
  public String fFO;
  public int fGp;

  public static boolean a(a.a.a.a.a parama, fn paramfn, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfn.Th = parama.aPS();
      return true;
    case 2:
      paramfn.fER = parama.aPQ();
      return true;
    case 3:
      paramfn.fFO = parama.aPS();
      return true;
    case 4:
    }
    paramfn.fGp = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.Th != null)
      parama.A(1, this.Th);
    parama.by(2, this.fER);
    if (this.fFO != null)
      parama.A(3, this.fFO);
    parama.by(4, this.fGp);
  }

  public final int ns()
  {
    String str = this.Th;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.Th);
    int j = i + a.a.a.a.br(2, this.fER);
    if (this.fFO != null)
      j += a.a.a.a.z(3, this.fFO);
    return j + a.a.a.a.br(4, this.fGp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fn
 * JD-Core Version:    0.6.2
 */