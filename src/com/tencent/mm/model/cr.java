package com.tencent.mm.model;

public final class cr extends com.tencent.mm.am.a
{
  public String cjM;
  public long cjN;
  public int key;

  public static boolean a(a.a.a.a.a parama, cr paramcr, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramcr.key = parama.aPQ();
      return true;
    case 2:
      paramcr.cjM = parama.aPS();
      return true;
    case 3:
    }
    paramcr.cjN = parama.aPW();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.key);
    if (this.cjM != null)
      parama.A(2, this.cjM);
    parama.k(3, this.cjN);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.key);
    if (this.cjM != null)
      i += a.a.a.a.z(2, this.cjM);
    return i + a.a.a.a.i(3, this.cjN);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cr
 * JD-Core Version:    0.6.2
 */