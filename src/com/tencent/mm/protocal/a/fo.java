package com.tencent.mm.protocal.a;

public final class fo extends com.tencent.mm.am.a
{
  public String Th;
  public long fGq;
  public int fGr;

  public static boolean a(a.a.a.a.a parama, fo paramfo, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramfo.fGq = parama.aPW();
      return true;
    case 2:
      paramfo.Th = parama.aPS();
      return true;
    case 3:
    }
    paramfo.fGr = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.k(1, this.fGq);
    if (this.Th != null)
      parama.A(2, this.Th);
    parama.by(3, this.fGr);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.i(1, this.fGq);
    if (this.Th != null)
      i += a.a.a.a.z(2, this.Th);
    return i + a.a.a.a.br(3, this.fGr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.fo
 * JD-Core Version:    0.6.2
 */