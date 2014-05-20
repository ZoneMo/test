package com.tencent.mm.protocal.a;

public final class ty extends com.tencent.mm.am.a
{
  public String fFv;
  public String fSV;
  public String fUY;

  public static boolean a(a.a.a.a.a parama, ty paramty, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramty.fUY = parama.aPS();
      return true;
    case 2:
      paramty.fSV = parama.aPS();
      return true;
    case 3:
    }
    paramty.fFv = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fUY != null)
      parama.A(1, this.fUY);
    if (this.fSV != null)
      parama.A(2, this.fSV);
    if (this.fFv != null)
      parama.A(3, this.fFv);
  }

  public final int ns()
  {
    String str = this.fUY;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fUY);
    if (this.fSV != null)
      i += a.a.a.a.z(2, this.fSV);
    if (this.fFv != null)
      i += a.a.a.a.z(3, this.fFv);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ty
 * JD-Core Version:    0.6.2
 */