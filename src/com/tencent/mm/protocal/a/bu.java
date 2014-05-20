package com.tencent.mm.protocal.a;

public final class bu extends com.tencent.mm.am.a
{
  public String fCk;

  public static boolean a(a.a.a.a.a parama, bu parambu, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
    }
    parambu.fCk = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fCk != null)
      parama.A(1, this.fCk);
  }

  public final int ns()
  {
    String str = this.fCk;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fCk);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bu
 * JD-Core Version:    0.6.2
 */