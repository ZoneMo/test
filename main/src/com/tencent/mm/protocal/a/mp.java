package com.tencent.mm.protocal.a;

public final class mp extends com.tencent.mm.am.a
{
  public String eBo;
  public String fDe;
  public String fDg;
  public String fDh;

  public static boolean a(a.a.a.a.a parama, mp parammp, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parammp.eBo = parama.aPS();
      return true;
    case 2:
      parammp.fDe = parama.aPS();
      return true;
    case 3:
      parammp.fDg = parama.aPS();
      return true;
    case 4:
    }
    parammp.fDh = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    if (this.fDe != null)
      parama.A(2, this.fDe);
    if (this.fDg != null)
      parama.A(3, this.fDg);
    if (this.fDh != null)
      parama.A(4, this.fDh);
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    if (this.fDe != null)
      i += a.a.a.a.z(2, this.fDe);
    if (this.fDg != null)
      i += a.a.a.a.z(3, this.fDg);
    if (this.fDh != null)
      i += a.a.a.a.z(4, this.fDh);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.mp
 * JD-Core Version:    0.6.2
 */