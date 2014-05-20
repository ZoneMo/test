package com.tencent.mm.protocal.a;

public final class nq extends com.tencent.mm.am.a
{
  public String eBo;
  public int fzr;

  public static boolean a(a.a.a.a.a parama, nq paramnq, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramnq.eBo = parama.aPS();
      return true;
    case 2:
    }
    paramnq.fzr = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    parama.by(2, this.fzr);
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    return i + a.a.a.a.br(2, this.fzr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.nq
 * JD-Core Version:    0.6.2
 */