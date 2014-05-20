package com.tencent.mm.protocal.a;

public final class nb extends com.tencent.mm.am.a
{
  public String Tv;
  public float fNx;
  public float fNy;

  public static boolean a(a.a.a.a.a parama, nb paramnb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramnb.fNx = parama.aPV();
      return true;
    case 2:
      paramnb.fNy = parama.aPV();
      return true;
    case 3:
    }
    paramnb.Tv = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, this.fNx);
    parama.c(2, this.fNy);
    if (this.Tv != null)
      parama.A(3, this.Tv);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.oK(1);
    int j = i + a.a.a.a.oK(2);
    if (this.Tv != null)
      j += a.a.a.a.z(3, this.Tv);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nb
 * JD-Core Version:    0.6.2
 */