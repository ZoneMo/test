package com.tencent.mm.protocal.a;

public final class w extends com.tencent.mm.am.a
{
  public String fyR;
  public int fzY;
  public String fzZ;

  public static boolean a(a.a.a.a.a parama, w paramw, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramw.fyR = parama.aPS();
      return true;
    case 2:
      paramw.fzY = parama.aPQ();
      return true;
    case 3:
    }
    paramw.fzZ = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fyR != null)
      parama.A(1, this.fyR);
    parama.by(2, this.fzY);
    if (this.fzZ != null)
      parama.A(3, this.fzZ);
  }

  public final int ns()
  {
    String str = this.fyR;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fyR);
    int j = i + a.a.a.a.br(2, this.fzY);
    if (this.fzZ != null)
      j += a.a.a.a.z(3, this.fzZ);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.w
 * JD-Core Version:    0.6.2
 */