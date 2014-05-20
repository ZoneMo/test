package com.tencent.mm.protocal.a;

public final class gd extends com.tencent.mm.am.a
{
  public int fIE;
  public String fIF;

  public static boolean a(a.a.a.a.a parama, gd paramgd, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramgd.fIE = parama.aPQ();
      return true;
    case 2:
    }
    paramgd.fIF = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fIE);
    if (this.fIF != null)
      parama.A(2, this.fIF);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fIE);
    if (this.fIF != null)
      i += a.a.a.a.z(2, this.fIF);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.gd
 * JD-Core Version:    0.6.2
 */