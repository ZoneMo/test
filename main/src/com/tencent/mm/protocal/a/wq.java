package com.tencent.mm.protocal.a;

public final class wq extends com.tencent.mm.am.a
{
  public String eBo;
  public int fXC;

  public static boolean a(a.a.a.a.a parama, wq paramwq, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramwq.fXC = parama.aPQ();
      return true;
    case 2:
    }
    paramwq.eBo = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fXC);
    if (this.eBo != null)
      parama.A(2, this.eBo);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fXC);
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wq
 * JD-Core Version:    0.6.2
 */