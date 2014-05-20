package com.tencent.mm.protocal.a;

public final class b extends com.tencent.mm.am.a
{
  public String fyE;
  public String fyF;
  public String fyG;
  public String fyH;

  public static boolean a(a.a.a.a.a parama, b paramb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramb.fyE = parama.aPS();
      return true;
    case 2:
      paramb.fyF = parama.aPS();
      return true;
    case 3:
      paramb.fyG = parama.aPS();
      return true;
    case 4:
    }
    paramb.fyH = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyE != null)
      parama.A(1, this.fyE);
    if (this.fyF != null)
      parama.A(2, this.fyF);
    if (this.fyG != null)
      parama.A(3, this.fyG);
    if (this.fyH != null)
      parama.A(4, this.fyH);
  }

  public final int ns()
  {
    String str = this.fyE;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyE);
    if (this.fyF != null)
      i += a.a.a.a.z(2, this.fyF);
    if (this.fyG != null)
      i += a.a.a.a.z(3, this.fyG);
    if (this.fyH != null)
      i += a.a.a.a.z(4, this.fyH);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.b
 * JD-Core Version:    0.6.2
 */