package com.tencent.mm.protocal.a;

public final class qx extends com.tencent.mm.am.a
{
  public String eBo;
  public String fDe;
  public int fSD;
  public String fTl;
  public String fTm;

  public static boolean a(a.a.a.a.a parama, qx paramqx, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramqx.eBo = parama.aPS();
      return true;
    case 2:
      paramqx.fSD = parama.aPQ();
      return true;
    case 3:
      paramqx.fDe = parama.aPS();
      return true;
    case 4:
      paramqx.fTl = parama.aPS();
      return true;
    case 5:
    }
    paramqx.fTm = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.eBo != null)
      parama.A(1, this.eBo);
    parama.by(2, this.fSD);
    if (this.fDe != null)
      parama.A(3, this.fDe);
    if (this.fTl != null)
      parama.A(4, this.fTl);
    if (this.fTm != null)
      parama.A(5, this.fTm);
  }

  public final int ns()
  {
    String str = this.eBo;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.eBo);
    int j = i + a.a.a.a.br(2, this.fSD);
    if (this.fDe != null)
      j += a.a.a.a.z(3, this.fDe);
    if (this.fTl != null)
      j += a.a.a.a.z(4, this.fTl);
    if (this.fTm != null)
      j += a.a.a.a.z(5, this.fTm);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.qx
 * JD-Core Version:    0.6.2
 */