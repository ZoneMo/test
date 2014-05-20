package com.tencent.mm.protocal.a;

public final class uj extends com.tencent.mm.am.a
{
  public int dGR;
  public String dGS;
  public int eBn;
  public String fGd;
  public String fVg;
  public String fVh;
  public String fVi;
  public int fVj;
  public int fVk;
  public int fzV;
  public int fzy;

  public static boolean a(a.a.a.a.a parama, uj paramuj, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramuj.fVg = parama.aPS();
      return true;
    case 2:
      paramuj.fGd = parama.aPS();
      return true;
    case 3:
      paramuj.fVh = parama.aPS();
      return true;
    case 4:
      paramuj.fVi = parama.aPS();
      return true;
    case 5:
      paramuj.dGR = parama.aPQ();
      return true;
    case 6:
      paramuj.fzV = parama.aPQ();
      return true;
    case 7:
      paramuj.fzy = parama.aPQ();
      return true;
    case 8:
      paramuj.dGS = parama.aPS();
      return true;
    case 9:
      paramuj.fVj = parama.aPQ();
      return true;
    case 10:
      paramuj.eBn = parama.aPQ();
      return true;
    case 11:
    }
    paramuj.fVk = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fVg != null)
      parama.A(1, this.fVg);
    if (this.fGd != null)
      parama.A(2, this.fGd);
    if (this.fVh != null)
      parama.A(3, this.fVh);
    if (this.fVi != null)
      parama.A(4, this.fVi);
    parama.by(5, this.dGR);
    parama.by(6, this.fzV);
    parama.by(7, this.fzy);
    if (this.dGS != null)
      parama.A(8, this.dGS);
    parama.by(9, this.fVj);
    parama.by(10, this.eBn);
    parama.by(11, this.fVk);
  }

  public final uj bS(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    return this;
  }

  public final int ns()
  {
    String str = this.fVg;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fVg);
    if (this.fGd != null)
      i += a.a.a.a.z(2, this.fGd);
    if (this.fVh != null)
      i += a.a.a.a.z(3, this.fVh);
    if (this.fVi != null)
      i += a.a.a.a.z(4, this.fVi);
    int j = i + a.a.a.a.br(5, this.dGR) + a.a.a.a.br(6, this.fzV) + a.a.a.a.br(7, this.fzy);
    if (this.dGS != null)
      j += a.a.a.a.z(8, this.dGS);
    return j + a.a.a.a.br(9, this.fVj) + a.a.a.a.br(10, this.eBn) + a.a.a.a.br(11, this.fVk);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.uj
 * JD-Core Version:    0.6.2
 */