package com.tencent.mm.protocal.a;

public final class lj extends com.tencent.mm.am.a
{
  public String eBo;
  public int fAY;
  public String fBm;
  public String fDe;
  public String fMS;
  public String fMT;

  public static boolean a(a.a.a.a.a parama, lj paramlj, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramlj.fBm = parama.aPS();
      return true;
    case 2:
      paramlj.eBo = parama.aPS();
      return true;
    case 3:
      paramlj.fMS = parama.aPS();
      return true;
    case 4:
      paramlj.fMT = parama.aPS();
      return true;
    case 5:
      paramlj.fAY = parama.aPQ();
      return true;
    case 6:
    }
    paramlj.fDe = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fBm != null)
      parama.A(1, this.fBm);
    if (this.eBo != null)
      parama.A(2, this.eBo);
    if (this.fMS != null)
      parama.A(3, this.fMS);
    if (this.fMT != null)
      parama.A(4, this.fMT);
    parama.by(5, this.fAY);
    if (this.fDe != null)
      parama.A(6, this.fDe);
  }

  public final int ns()
  {
    String str = this.fBm;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fBm);
    if (this.eBo != null)
      i += a.a.a.a.z(2, this.eBo);
    if (this.fMS != null)
      i += a.a.a.a.z(3, this.fMS);
    if (this.fMT != null)
      i += a.a.a.a.z(4, this.fMT);
    int j = i + a.a.a.a.br(5, this.fAY);
    if (this.fDe != null)
      j += a.a.a.a.z(6, this.fDe);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lj
 * JD-Core Version:    0.6.2
 */