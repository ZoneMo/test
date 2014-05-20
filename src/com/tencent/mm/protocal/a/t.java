package com.tencent.mm.protocal.a;

public final class t extends com.tencent.mm.am.a
{
  public String fzQ;
  public String fzR;

  public static boolean a(a.a.a.a.a parama, t paramt, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramt.fzQ = parama.aPS();
      return true;
    case 2:
    }
    paramt.fzR = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fzQ != null)
      parama.A(1, this.fzQ);
    if (this.fzR != null)
      parama.A(2, this.fzR);
  }

  public final int ns()
  {
    String str = this.fzQ;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fzQ);
    if (this.fzR != null)
      i += a.a.a.a.z(2, this.fzR);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.t
 * JD-Core Version:    0.6.2
 */