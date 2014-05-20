package com.tencent.mm.protocal.a;

public final class vb extends com.tencent.mm.am.a
{
  public int fVT;
  public int fVU;

  public static boolean a(a.a.a.a.a parama, vb paramvb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramvb.fVT = parama.aPQ();
      return true;
    case 2:
    }
    paramvb.fVU = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fVT);
    parama.by(2, this.fVU);
  }

  public final int ns()
  {
    return 0 + a.a.a.a.br(1, this.fVT) + a.a.a.a.br(2, this.fVU);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.vb
 * JD-Core Version:    0.6.2
 */