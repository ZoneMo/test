package com.tencent.mm.protocal.a;

public final class fs extends com.tencent.mm.am.a
{
  public int fAN;
  public String fDj;
  public String fDk;
  public String fDl;
  public int fDm;
  public String fGA;
  public String fGB;
  public String fGC;
  public int fGD;
  public int fzr;

  public static boolean a(a.a.a.a.a parama, fs paramfs, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfs.fDj = parama.aPS();
      return true;
    case 2:
      paramfs.fDk = parama.aPS();
      return true;
    case 3:
      paramfs.fDl = parama.aPS();
      return true;
    case 4:
      paramfs.fDm = parama.aPQ();
      return true;
    case 5:
      paramfs.fGA = parama.aPS();
      return true;
    case 6:
      paramfs.fGB = parama.aPS();
      return true;
    case 7:
      paramfs.fAN = parama.aPQ();
      return true;
    case 8:
      paramfs.fGC = parama.aPS();
      return true;
    case 9:
      paramfs.fzr = parama.aPQ();
      return true;
    case 10:
    }
    paramfs.fGD = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fDj != null)
      parama.A(1, this.fDj);
    if (this.fDk != null)
      parama.A(2, this.fDk);
    if (this.fDl != null)
      parama.A(3, this.fDl);
    parama.by(4, this.fDm);
    if (this.fGA != null)
      parama.A(5, this.fGA);
    if (this.fGB != null)
      parama.A(6, this.fGB);
    parama.by(7, this.fAN);
    if (this.fGC != null)
      parama.A(8, this.fGC);
    parama.by(9, this.fzr);
    parama.by(10, this.fGD);
  }

  public final int ns()
  {
    String str = this.fDj;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fDj);
    if (this.fDk != null)
      i += a.a.a.a.z(2, this.fDk);
    if (this.fDl != null)
      i += a.a.a.a.z(3, this.fDl);
    int j = i + a.a.a.a.br(4, this.fDm);
    if (this.fGA != null)
      j += a.a.a.a.z(5, this.fGA);
    if (this.fGB != null)
      j += a.a.a.a.z(6, this.fGB);
    int k = j + a.a.a.a.br(7, this.fAN);
    if (this.fGC != null)
      k += a.a.a.a.z(8, this.fGC);
    return k + a.a.a.a.br(9, this.fzr) + a.a.a.a.br(10, this.fGD);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fs
 * JD-Core Version:    0.6.2
 */