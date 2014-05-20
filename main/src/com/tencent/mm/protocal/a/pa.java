package com.tencent.mm.protocal.a;

public final class pa extends com.tencent.mm.am.a
{
  public String eBo;
  public int fAX;
  public String fBk;
  public String fDe;
  public String fEl;
  public int fIE;
  public int fNb;
  public String fRj;

  public static boolean a(a.a.a.a.a parama, pa parampa, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parampa.fAX = parama.aPQ();
      return true;
    case 2:
      parampa.fDe = parama.aPS();
      return true;
    case 3:
      parampa.fBk = parama.aPS();
      return true;
    case 4:
      parampa.fEl = parama.aPS();
      return true;
    case 5:
      parampa.eBo = parama.aPS();
      return true;
    case 6:
      parampa.fNb = parama.aPQ();
      return true;
    case 7:
      parampa.fIE = parama.aPQ();
      return true;
    case 8:
    }
    parampa.fRj = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fAX);
    if (this.fDe != null)
      parama.A(2, this.fDe);
    if (this.fBk != null)
      parama.A(3, this.fBk);
    if (this.fEl != null)
      parama.A(4, this.fEl);
    if (this.eBo != null)
      parama.A(5, this.eBo);
    parama.by(6, this.fNb);
    parama.by(7, this.fIE);
    if (this.fRj != null)
      parama.A(8, this.fRj);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fAX);
    if (this.fDe != null)
      i += a.a.a.a.z(2, this.fDe);
    if (this.fBk != null)
      i += a.a.a.a.z(3, this.fBk);
    if (this.fEl != null)
      i += a.a.a.a.z(4, this.fEl);
    if (this.eBo != null)
      i += a.a.a.a.z(5, this.eBo);
    int j = i + a.a.a.a.br(6, this.fNb) + a.a.a.a.br(7, this.fIE);
    if (this.fRj != null)
      j += a.a.a.a.z(8, this.fRj);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.pa
 * JD-Core Version:    0.6.2
 */