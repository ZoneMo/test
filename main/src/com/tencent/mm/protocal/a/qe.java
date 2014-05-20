package com.tencent.mm.protocal.a;

public final class qe extends com.tencent.mm.am.a
{
  public int fGp;
  public String fNj;

  public static boolean a(a.a.a.a.a parama, qe paramqe, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqe.fNj = parama.aPS();
      return true;
    case 2:
    }
    paramqe.fGp = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fNj != null)
      parama.A(1, this.fNj);
    parama.by(2, this.fGp);
  }

  public final int ns()
  {
    String str = this.fNj;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fNj);
    return i + a.a.a.a.br(2, this.fGp);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qe
 * JD-Core Version:    0.6.2
 */