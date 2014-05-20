package com.tencent.mm.protocal.a;

public final class pq extends com.tencent.mm.am.a
{
  public String fEA;
  public String fSc;

  public static boolean a(a.a.a.a.a parama, pq parampq, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parampq.fSc = parama.aPS();
      return true;
    case 2:
    }
    parampq.fEA = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fSc != null)
      parama.A(1, this.fSc);
    if (this.fEA != null)
      parama.A(2, this.fEA);
  }

  public final int ns()
  {
    String str = this.fSc;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fSc);
    if (this.fEA != null)
      i += a.a.a.a.z(2, this.fEA);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pq
 * JD-Core Version:    0.6.2
 */