package com.tencent.mm.protocal.a;

public final class ew extends com.tencent.mm.am.a
{
  public String fFv;
  public int fFw;
  public int fFx;
  public String fFy;

  public static boolean a(a.a.a.a.a parama, ew paramew, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramew.fFv = parama.aPS();
      return true;
    case 2:
      paramew.fFw = parama.aPQ();
      return true;
    case 3:
      paramew.fFx = parama.aPQ();
      return true;
    case 4:
    }
    paramew.fFy = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fFv != null)
      parama.A(1, this.fFv);
    parama.by(2, this.fFw);
    parama.by(3, this.fFx);
    if (this.fFy != null)
      parama.A(4, this.fFy);
  }

  public final int ns()
  {
    String str = this.fFv;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fFv);
    int j = i + a.a.a.a.br(2, this.fFw) + a.a.a.a.br(3, this.fFx);
    if (this.fFy != null)
      j += a.a.a.a.z(4, this.fFy);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ew
 * JD-Core Version:    0.6.2
 */