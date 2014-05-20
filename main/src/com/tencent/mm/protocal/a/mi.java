package com.tencent.mm.protocal.a;

public final class mi extends com.tencent.mm.am.a
{
  public int fAs;
  public String fNk;

  public static boolean a(a.a.a.a.a parama, mi parammi, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parammi.fAs = parama.aPQ();
      return true;
    case 2:
    }
    parammi.fNk = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAs);
    if (this.fNk != null)
      parama.A(2, this.fNk);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAs);
    if (this.fNk != null)
      i += a.a.a.a.z(2, this.fNk);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.mi
 * JD-Core Version:    0.6.2
 */