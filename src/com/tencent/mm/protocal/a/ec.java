package com.tencent.mm.protocal.a;

public final class ec extends com.tencent.mm.am.a
{
  public String bMa;
  public int fER;

  public static boolean a(a.a.a.a.a parama, ec paramec, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramec.bMa = parama.aPS();
      return true;
    case 2:
    }
    paramec.fER = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.bMa != null)
      parama.A(1, this.bMa);
    parama.by(2, this.fER);
  }

  public final int ns()
  {
    String str = this.bMa;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.bMa);
    return i + a.a.a.a.br(2, this.fER);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ec
 * JD-Core Version:    0.6.2
 */