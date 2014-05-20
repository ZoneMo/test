package com.tencent.mm.protocal.a;

public final class ug extends com.tencent.mm.am.a
{
  public String fSV;
  public String fVb;

  public static boolean a(a.a.a.a.a parama, ug paramug, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramug.fSV = parama.aPS();
      return true;
    case 2:
    }
    paramug.fVb = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fSV != null)
      parama.A(1, this.fSV);
    if (this.fVb != null)
      parama.A(2, this.fVb);
  }

  public final int ns()
  {
    String str = this.fSV;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.fSV);
    if (this.fVb != null)
      i += a.a.a.a.z(2, this.fVb);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.ug
 * JD-Core Version:    0.6.2
 */