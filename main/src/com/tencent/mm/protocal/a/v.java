package com.tencent.mm.protocal.a;

public final class v extends com.tencent.mm.am.a
{
  public String fyR;
  public String fzX;

  public static boolean a(a.a.a.a.a parama, v paramv, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramv.fyR = parama.aPS();
      return true;
    case 2:
    }
    paramv.fzX = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyR != null)
      parama.A(1, this.fyR);
    if (this.fzX != null)
      parama.A(2, this.fzX);
  }

  public final int ns()
  {
    String str = this.fyR;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyR);
    if (this.fzX != null)
      i += a.a.a.a.z(2, this.fzX);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.v
 * JD-Core Version:    0.6.2
 */