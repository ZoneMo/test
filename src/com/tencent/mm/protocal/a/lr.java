package com.tencent.mm.protocal.a;

public final class lr extends com.tencent.mm.am.a
{
  public String fMX;
  public String fMY;

  public static boolean a(a.a.a.a.a parama, lr paramlr, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramlr.fMX = parama.aPS();
      return true;
    case 2:
    }
    paramlr.fMY = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fMX != null)
      parama.A(1, this.fMX);
    if (this.fMY != null)
      parama.A(2, this.fMY);
  }

  public final int ns()
  {
    String str = this.fMX;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fMX);
    if (this.fMY != null)
      i += a.a.a.a.z(2, this.fMY);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.lr
 * JD-Core Version:    0.6.2
 */