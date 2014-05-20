package com.tencent.mm.protocal.a;

public final class lh extends com.tencent.mm.am.a
{
  public String fMP;
  public int fMQ;
  public int fMR;

  public static boolean a(a.a.a.a.a parama, lh paramlh, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramlh.fMP = parama.aPS();
      return true;
    case 2:
      paramlh.fMQ = parama.aPQ();
      return true;
    case 3:
    }
    paramlh.fMR = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fMP != null)
      parama.A(1, this.fMP);
    parama.by(2, this.fMQ);
    parama.by(3, this.fMR);
  }

  public final int ns()
  {
    String str = this.fMP;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fMP);
    return i + a.a.a.a.br(2, this.fMQ) + a.a.a.a.br(3, this.fMR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lh
 * JD-Core Version:    0.6.2
 */