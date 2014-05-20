package com.tencent.mm.protocal.a;

public final class c extends com.tencent.mm.am.a
{
  public String Th;
  public String dGQ;
  public int dGR;
  public String dGS;
  public String dGT;

  public static boolean a(a.a.a.a.a parama, c paramc, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramc.Th = parama.aPS();
      return true;
    case 2:
      paramc.dGQ = parama.aPS();
      return true;
    case 3:
      paramc.dGR = parama.aPQ();
      return true;
    case 4:
      paramc.dGS = parama.aPS();
      return true;
    case 5:
    }
    paramc.dGT = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.Th != null)
      parama.A(1, this.Th);
    if (this.dGQ != null)
      parama.A(2, this.dGQ);
    parama.by(3, this.dGR);
    if (this.dGS != null)
      parama.A(4, this.dGS);
    if (this.dGT != null)
      parama.A(5, this.dGT);
  }

  public final int ns()
  {
    String str = this.Th;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.Th);
    if (this.dGQ != null)
      i += a.a.a.a.z(2, this.dGQ);
    int j = i + a.a.a.a.br(3, this.dGR);
    if (this.dGS != null)
      j += a.a.a.a.z(4, this.dGS);
    if (this.dGT != null)
      j += a.a.a.a.z(5, this.dGT);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.c
 * JD-Core Version:    0.6.2
 */