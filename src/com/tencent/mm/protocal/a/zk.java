package com.tencent.mm.protocal.a;

public final class zk extends com.tencent.mm.am.a
{
  public int fAK;
  public int fZF;
  public String fZG;

  public static boolean a(a.a.a.a.a parama, zk paramzk, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramzk.fZF = parama.aPQ();
      return true;
    case 2:
      paramzk.fAK = parama.aPQ();
      return true;
    case 3:
    }
    paramzk.fZG = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.fZF);
    parama.by(2, this.fAK);
    if (this.fZG != null)
      parama.A(3, this.fZG);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.fZF) + a.a.a.a.br(2, this.fAK);
    if (this.fZG != null)
      i += a.a.a.a.z(3, this.fZG);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.zk
 * JD-Core Version:    0.6.2
 */