package com.tencent.mm.protocal.a;

public final class xd extends com.tencent.mm.am.a
{
  public String Th;
  public String Ti;
  public double Tl;
  public double Tm;

  public static boolean a(a.a.a.a.a parama, xd paramxd, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramxd.Tl = parama.aPU();
      return true;
    case 2:
      paramxd.Tm = parama.aPU();
      return true;
    case 3:
      paramxd.Th = parama.aPS();
      return true;
    case 4:
    }
    paramxd.Ti = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.a(1, this.Tl);
    parama.a(2, this.Tm);
    if (this.Th != null)
      parama.A(3, this.Th);
    if (this.Ti != null)
      parama.A(4, this.Ti);
  }

  public final xd cc(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = a(locala); i > 0; i = a(locala))
      if (!a(locala, this, i))
        locala.aPZ();
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.oJ(1);
    int j = i + a.a.a.a.oJ(2);
    if (this.Th != null)
      j += a.a.a.a.z(3, this.Th);
    if (this.Ti != null)
      j += a.a.a.a.z(4, this.Ti);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.xd
 * JD-Core Version:    0.6.2
 */