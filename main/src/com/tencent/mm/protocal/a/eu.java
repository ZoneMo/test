package com.tencent.mm.protocal.a;

public final class eu extends com.tencent.mm.am.a
{
  public int fAL;
  public int fAY;
  public int fEd;
  public String fFn;
  public int fFs;

  public static boolean a(a.a.a.a.a parama, eu parameu, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parameu.fAY = parama.aPQ();
      return true;
    case 2:
      parameu.fEd = parama.aPQ();
      return true;
    case 3:
      parameu.fAL = parama.aPQ();
      return true;
    case 4:
      parameu.fFn = parama.aPS();
      return true;
    case 5:
    }
    parameu.fFs = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAY);
    parama.by(2, this.fEd);
    parama.by(3, this.fAL);
    if (this.fFn != null)
      parama.A(4, this.fFn);
    parama.by(5, this.fFs);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAY) + a.a.a.a.br(2, this.fEd) + a.a.a.a.br(3, this.fAL);
    if (this.fFn != null)
      i += a.a.a.a.z(4, this.fFn);
    return i + a.a.a.a.br(5, this.fFs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.eu
 * JD-Core Version:    0.6.2
 */