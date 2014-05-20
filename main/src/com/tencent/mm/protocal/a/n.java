package com.tencent.mm.protocal.a;

public final class n extends com.tencent.mm.am.a
{
  public String Tu;
  public String Tv;
  public String cqx;
  public String eBo;
  public String fzC;
  public String fzD;
  public String fzE;

  public static boolean a(a.a.a.a.a parama, n paramn, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramn.cqx = parama.aPS();
      return true;
    case 2:
      paramn.Tu = parama.aPS();
      return true;
    case 3:
      paramn.Tv = parama.aPS();
      return true;
    case 4:
      paramn.fzC = parama.aPS();
      return true;
    case 5:
      paramn.eBo = parama.aPS();
      return true;
    case 6:
      paramn.fzD = parama.aPS();
      return true;
    case 7:
    }
    paramn.fzE = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.cqx != null)
      parama.A(1, this.cqx);
    if (this.Tu != null)
      parama.A(2, this.Tu);
    if (this.Tv != null)
      parama.A(3, this.Tv);
    if (this.fzC != null)
      parama.A(4, this.fzC);
    if (this.eBo != null)
      parama.A(5, this.eBo);
    if (this.fzD != null)
      parama.A(6, this.fzD);
    if (this.fzE != null)
      parama.A(7, this.fzE);
  }

  public final int ns()
  {
    String str = this.cqx;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.cqx);
    if (this.Tu != null)
      i += a.a.a.a.z(2, this.Tu);
    if (this.Tv != null)
      i += a.a.a.a.z(3, this.Tv);
    if (this.fzC != null)
      i += a.a.a.a.z(4, this.fzC);
    if (this.eBo != null)
      i += a.a.a.a.z(5, this.eBo);
    if (this.fzD != null)
      i += a.a.a.a.z(6, this.fzD);
    if (this.fzE != null)
      i += a.a.a.a.z(7, this.fzE);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.n
 * JD-Core Version:    0.6.2
 */