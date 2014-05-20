package com.tencent.mm.protocal.a;

public final class qq extends com.tencent.mm.am.a
{
  public String fFn;
  public int fGh;
  public String fIF;
  public int fLX;
  public int fTg;

  public static boolean a(a.a.a.a.a parama, qq paramqq, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqq.fLX = parama.aPQ();
      return true;
    case 2:
      paramqq.fIF = parama.aPS();
      return true;
    case 3:
      paramqq.fFn = parama.aPS();
      return true;
    case 4:
      paramqq.fGh = parama.aPQ();
      return true;
    case 5:
    }
    paramqq.fTg = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fLX);
    if (this.fIF != null)
      parama.A(2, this.fIF);
    if (this.fFn != null)
      parama.A(3, this.fFn);
    parama.by(4, this.fGh);
    parama.by(5, this.fTg);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fLX);
    if (this.fIF != null)
      i += a.a.a.a.z(2, this.fIF);
    if (this.fFn != null)
      i += a.a.a.a.z(3, this.fFn);
    return i + a.a.a.a.br(4, this.fGh) + a.a.a.a.br(5, this.fTg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qq
 * JD-Core Version:    0.6.2
 */