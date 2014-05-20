package com.tencent.mm.protocal.a;

public final class au extends com.tencent.mm.am.a
{
  public com.tencent.mm.am.b fAW;
  public int fAX;
  public com.tencent.mm.am.b fAl;
  public int fAm;
  public com.tencent.mm.am.b fAn;
  public int fyJ;

  public static boolean a(a.a.a.a.a parama, au paramau, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramau.fAW = parama.aPX();
      return true;
    case 2:
      paramau.fAX = parama.aPQ();
      return true;
    case 3:
      paramau.fAl = parama.aPX();
      return true;
    case 4:
      paramau.fAm = parama.aPQ();
      return true;
    case 5:
      paramau.fAn = parama.aPX();
      return true;
    case 6:
    }
    paramau.fyJ = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if ((this.fAW == null) || (this.fAl == null) || (this.fAn == null))
      throw new a.a.a.b("Not all required fields were included");
    if (this.fAW != null)
      parama.c(1, this.fAW);
    parama.by(2, this.fAX);
    if (this.fAl != null)
      parama.c(3, this.fAl);
    parama.by(4, this.fAm);
    if (this.fAn != null)
      parama.c(5, this.fAn);
    parama.by(6, this.fyJ);
  }

  public final int ns()
  {
    com.tencent.mm.am.b localb = this.fAW;
    int i = 0;
    if (localb != null)
      i = 0 + a.a.a.a.a(1, this.fAW);
    int j = i + a.a.a.a.br(2, this.fAX);
    if (this.fAl != null)
      j += a.a.a.a.a(3, this.fAl);
    int k = j + a.a.a.a.br(4, this.fAm);
    if (this.fAn != null)
      k += a.a.a.a.a(5, this.fAn);
    return k + a.a.a.a.br(6, this.fyJ);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.au
 * JD-Core Version:    0.6.2
 */