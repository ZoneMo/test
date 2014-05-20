package com.tencent.mm.protocal.a;

public final class qg extends com.tencent.mm.am.a
{
  public String fNA;
  public String fNB;
  public int fNC;
  public float fNx;
  public float fNy;
  public int fNz;

  public static boolean a(a.a.a.a.a parama, qg paramqg, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqg.fNx = parama.aPV();
      return true;
    case 2:
      paramqg.fNy = parama.aPV();
      return true;
    case 3:
      paramqg.fNz = parama.aPQ();
      return true;
    case 4:
      paramqg.fNA = parama.aPS();
      return true;
    case 5:
      paramqg.fNB = parama.aPS();
      return true;
    case 6:
    }
    paramqg.fNC = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.c(1, this.fNx);
    parama.c(2, this.fNy);
    parama.by(3, this.fNz);
    if (this.fNA != null)
      parama.A(4, this.fNA);
    if (this.fNB != null)
      parama.A(5, this.fNB);
    parama.by(6, this.fNC);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.oK(1);
    int j = i + a.a.a.a.oK(2) + a.a.a.a.br(3, this.fNz);
    if (this.fNA != null)
      j += a.a.a.a.z(4, this.fNA);
    if (this.fNB != null)
      j += a.a.a.a.z(5, this.fNB);
    return j + a.a.a.a.br(6, this.fNC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qg
 * JD-Core Version:    0.6.2
 */