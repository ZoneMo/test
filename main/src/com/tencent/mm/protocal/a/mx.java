package com.tencent.mm.protocal.a;

public final class mx extends com.tencent.mm.am.a
{
  public String eBo;
  public String fDe;
  public String fDg;
  public String fDh;
  public String fNk;
  public int fzr;

  public static boolean a(a.a.a.a.a parama, mx parammx, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parammx.fNk = parama.aPS();
      return true;
    case 2:
      parammx.eBo = parama.aPS();
      return true;
    case 3:
      parammx.fzr = parama.aPQ();
      return true;
    case 4:
      parammx.fDg = parama.aPS();
      return true;
    case 5:
      parammx.fDh = parama.aPS();
      return true;
    case 6:
    }
    parammx.fDe = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fNk != null)
      parama.A(1, this.fNk);
    if (this.eBo != null)
      parama.A(2, this.eBo);
    parama.by(3, this.fzr);
    if (this.fDg != null)
      parama.A(4, this.fDg);
    if (this.fDh != null)
      parama.A(5, this.fDh);
    if (this.fDe != null)
      parama.A(6, this.fDe);
  }

  public final int ns()
  {
    String str = this.fNk;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fNk);
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    int j = i + a.a.a.a.br(3, this.fzr);
    if (this.fDg != null)
      j += a.a.a.a.z(4, this.fDg);
    if (this.fDh != null)
      j += a.a.a.a.z(5, this.fDh);
    if (this.fDe != null)
      j += a.a.a.a.z(6, this.fDe);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.mx
 * JD-Core Version:    0.6.2
 */