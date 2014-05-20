package com.tencent.mm.protocal.a;

public final class yr extends com.tencent.mm.am.a
{
  public String eBo;
  public String fDe;
  public String fYU;

  public static boolean a(a.a.a.a.a parama, yr paramyr, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramyr.eBo = parama.aPS();
      return true;
    case 2:
      paramyr.fDe = parama.aPS();
      return true;
    case 3:
    }
    paramyr.fYU = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    if (this.fDe != null)
      parama.A(2, this.fDe);
    if (this.fYU != null)
      parama.A(3, this.fYU);
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    if (this.fDe != null)
      i += a.a.a.a.z(2, this.fDe);
    if (this.fYU != null)
      i += a.a.a.a.z(3, this.fYU);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.yr
 * JD-Core Version:    0.6.2
 */