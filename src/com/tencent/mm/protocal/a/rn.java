package com.tencent.mm.protocal.a;

public final class rn extends com.tencent.mm.am.a
{
  public int fTO;
  public String fzC;

  public static boolean a(a.a.a.a.a parama, rn paramrn, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramrn.fTO = parama.aPQ();
      return true;
    case 2:
    }
    paramrn.fzC = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fTO);
    if (this.fzC != null)
      parama.A(2, this.fzC);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fTO);
    if (this.fzC != null)
      i += a.a.a.a.z(2, this.fzC);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rn
 * JD-Core Version:    0.6.2
 */