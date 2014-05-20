package com.tencent.mm.protocal.a;

public final class aal extends com.tencent.mm.am.a
{
  public String fCy;
  public String fEv;
  public int gap;
  public String gaq;
  public String gar;
  public String gas;
  public int gat;

  public static boolean a(a.a.a.a.a parama, aal paramaal, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramaal.gap = parama.aPQ();
      return true;
    case 2:
      paramaal.fCy = parama.aPS();
      return true;
    case 3:
      paramaal.gaq = parama.aPS();
      return true;
    case 4:
      paramaal.gar = parama.aPS();
      return true;
    case 5:
      paramaal.fEv = parama.aPS();
      return true;
    case 6:
      paramaal.gas = parama.aPS();
      return true;
    case 7:
    }
    paramaal.gat = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.gap);
    if (this.fCy != null)
      parama.A(2, this.fCy);
    if (this.gaq != null)
      parama.A(3, this.gaq);
    if (this.gar != null)
      parama.A(4, this.gar);
    if (this.fEv != null)
      parama.A(5, this.fEv);
    if (this.gas != null)
      parama.A(6, this.gas);
    parama.by(7, this.gat);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.gap);
    if (this.fCy != null)
      i += a.a.a.a.z(2, this.fCy);
    if (this.gaq != null)
      i += a.a.a.a.z(3, this.gaq);
    if (this.gar != null)
      i += a.a.a.a.z(4, this.gar);
    if (this.fEv != null)
      i += a.a.a.a.z(5, this.fEv);
    if (this.gas != null)
      i += a.a.a.a.z(6, this.gas);
    return i + a.a.a.a.br(7, this.gat);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.aal
 * JD-Core Version:    0.6.2
 */