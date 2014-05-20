package com.tencent.mm.protocal.a;

public final class qw extends com.tencent.mm.am.a
{
  public String fTj;
  public String fTk;

  public static boolean a(a.a.a.a.a parama, qw paramqw, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqw.fTj = parama.aPS();
      return true;
    case 2:
    }
    paramqw.fTk = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fTj != null)
      parama.A(1, this.fTj);
    if (this.fTk != null)
      parama.A(2, this.fTk);
  }

  public final int ns()
  {
    String str = this.fTj;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fTj);
    if (this.fTk != null)
      i += a.a.a.a.z(2, this.fTk);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qw
 * JD-Core Version:    0.6.2
 */