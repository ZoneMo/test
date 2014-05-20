package com.tencent.mm.protocal.a;

public final class cf extends com.tencent.mm.am.a
{
  public String eBo;
  public String fDe;
  public String fDf;
  public String fDg;
  public String fDh;
  public int fDi;

  public static boolean a(a.a.a.a.a parama, cf paramcf, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramcf.eBo = parama.aPS();
      return true;
    case 2:
      paramcf.fDe = parama.aPS();
      return true;
    case 3:
      paramcf.fDf = parama.aPS();
      return true;
    case 4:
      paramcf.fDg = parama.aPS();
      return true;
    case 5:
      paramcf.fDh = parama.aPS();
      return true;
    case 6:
    }
    paramcf.fDi = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    if (this.fDe != null)
      parama.A(2, this.fDe);
    if (this.fDf != null)
      parama.A(3, this.fDf);
    if (this.fDg != null)
      parama.A(4, this.fDg);
    if (this.fDh != null)
      parama.A(5, this.fDh);
    parama.by(6, this.fDi);
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    if (this.fDe != null)
      i += a.a.a.a.z(2, this.fDe);
    if (this.fDf != null)
      i += a.a.a.a.z(3, this.fDf);
    if (this.fDg != null)
      i += a.a.a.a.z(4, this.fDg);
    if (this.fDh != null)
      i += a.a.a.a.z(5, this.fDh);
    return i + a.a.a.a.br(6, this.fDi);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.cf
 * JD-Core Version:    0.6.2
 */