package com.tencent.mm.protocal.a;

public final class wb extends com.tencent.mm.am.a
{
  public int fAs;
  public String fXv;

  public static boolean a(a.a.a.a.a parama, wb paramwb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramwb.fAs = parama.aPQ();
      return true;
    case 2:
    }
    paramwb.fXv = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAs);
    if (this.fXv != null)
      parama.A(2, this.fXv);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAs);
    if (this.fXv != null)
      i += a.a.a.a.z(2, this.fXv);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.wb
 * JD-Core Version:    0.6.2
 */