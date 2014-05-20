package com.tencent.mm.protocal.a;

public final class um extends com.tencent.mm.am.a
{
  public int dGR;
  public String dGS;
  public int eBn;
  public String fBM;
  public String fNU;
  public int fVj;
  public int fVk;
  public String fVp;
  public int fzV;
  public int fzy;

  public static boolean a(a.a.a.a.a parama, um paramum, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramum.fBM = parama.aPS();
      return true;
    case 2:
      paramum.fNU = parama.aPS();
      return true;
    case 3:
      paramum.fzV = parama.aPQ();
      return true;
    case 4:
      paramum.dGR = parama.aPQ();
      return true;
    case 5:
      paramum.dGS = parama.aPS();
      return true;
    case 6:
      paramum.fzy = parama.aPQ();
      return true;
    case 7:
      paramum.eBn = parama.aPQ();
      return true;
    case 8:
      paramum.fVj = parama.aPQ();
      return true;
    case 9:
      paramum.fVp = parama.aPS();
      return true;
    case 10:
    }
    paramum.fVk = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBM != null)
      parama.A(1, this.fBM);
    if (this.fNU != null)
      parama.A(2, this.fNU);
    parama.by(3, this.fzV);
    parama.by(4, this.dGR);
    if (this.dGS != null)
      parama.A(5, this.dGS);
    parama.by(6, this.fzy);
    parama.by(7, this.eBn);
    parama.by(8, this.fVj);
    if (this.fVp != null)
      parama.A(9, this.fVp);
    parama.by(10, this.fVk);
  }

  public final int ns()
  {
    String str = this.fBM;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fBM);
    if (this.fNU != null)
      i += a.a.a.a.z(2, this.fNU);
    int j = i + a.a.a.a.br(3, this.fzV) + a.a.a.a.br(4, this.dGR);
    if (this.dGS != null)
      j += a.a.a.a.z(5, this.dGS);
    int k = j + a.a.a.a.br(6, this.fzy) + a.a.a.a.br(7, this.eBn) + a.a.a.a.br(8, this.fVj);
    if (this.fVp != null)
      k += a.a.a.a.z(9, this.fVp);
    return k + a.a.a.a.br(10, this.fVk);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.um
 * JD-Core Version:    0.6.2
 */