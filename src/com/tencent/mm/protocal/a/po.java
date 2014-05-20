package com.tencent.mm.protocal.a;

public class po extends com.tencent.mm.am.a
{
  public String Th;
  public String Ti;
  public double Tl;
  public double Tm;
  public String fRY;
  public String fRZ;

  public static boolean a(a.a.a.a.a parama, po parampo, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parampo.Th = parama.aPS();
      return true;
    case 2:
      parampo.Ti = parama.aPS();
      return true;
    case 3:
      parampo.Tm = parama.aPU();
      return true;
    case 4:
      parampo.Tl = parama.aPU();
      return true;
    case 5:
      parampo.fRY = parama.aPS();
      return true;
    case 6:
    }
    parampo.fRZ = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.Th != null)
      parama.A(1, this.Th);
    if (this.Ti != null)
      parama.A(2, this.Ti);
    parama.a(3, this.Tm);
    parama.a(4, this.Tl);
    if (this.fRY != null)
      parama.A(5, this.fRY);
    if (this.fRZ != null)
      parama.A(6, this.fRZ);
  }

  public final int ns()
  {
    String str = this.Th;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.Th);
    if (this.Ti != null)
      i += a.a.a.a.z(2, this.Ti);
    int j = i + a.a.a.a.oJ(3);
    int k = j + a.a.a.a.oJ(4);
    if (this.fRY != null)
      k += a.a.a.a.z(5, this.fRY);
    if (this.fRZ != null)
      k += a.a.a.a.z(6, this.fRZ);
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.po
 * JD-Core Version:    0.6.2
 */