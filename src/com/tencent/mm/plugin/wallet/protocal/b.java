package com.tencent.mm.plugin.wallet.protocal;

public final class b extends com.tencent.mm.am.a
{
  public String fcU;
  public String fcV;
  public String fcW;
  public String fcX;
  public String fcY;
  public String fcZ;
  public String fda;
  public String fdb;
  public String fdc;
  public int id;

  public static boolean a(a.a.a.a.a parama, b paramb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramb.id = parama.aPQ();
      return true;
    case 2:
      paramb.fcU = parama.aPS();
      return true;
    case 3:
      paramb.fcV = parama.aPS();
      return true;
    case 4:
      paramb.fcW = parama.aPS();
      return true;
    case 5:
      paramb.fcX = parama.aPS();
      return true;
    case 6:
      paramb.fcY = parama.aPS();
      return true;
    case 7:
      paramb.fcZ = parama.aPS();
      return true;
    case 8:
      paramb.fda = parama.aPS();
      return true;
    case 9:
      paramb.fdb = parama.aPS();
      return true;
    case 10:
    }
    paramb.fdc = parama.aPS();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.id);
    if (this.fcU != null)
      parama.A(2, this.fcU);
    if (this.fcV != null)
      parama.A(3, this.fcV);
    if (this.fcW != null)
      parama.A(4, this.fcW);
    if (this.fcX != null)
      parama.A(5, this.fcX);
    if (this.fcY != null)
      parama.A(6, this.fcY);
    if (this.fcZ != null)
      parama.A(7, this.fcZ);
    if (this.fda != null)
      parama.A(8, this.fda);
    if (this.fdb != null)
      parama.A(9, this.fdb);
    if (this.fdc != null)
      parama.A(10, this.fdc);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.id);
    if (this.fcU != null)
      i += a.a.a.a.z(2, this.fcU);
    if (this.fcV != null)
      i += a.a.a.a.z(3, this.fcV);
    if (this.fcW != null)
      i += a.a.a.a.z(4, this.fcW);
    if (this.fcX != null)
      i += a.a.a.a.z(5, this.fcX);
    if (this.fcY != null)
      i += a.a.a.a.z(6, this.fcY);
    if (this.fcZ != null)
      i += a.a.a.a.z(7, this.fcZ);
    if (this.fda != null)
      i += a.a.a.a.z(8, this.fda);
    if (this.fdb != null)
      i += a.a.a.a.z(9, this.fdb);
    if (this.fdc != null)
      i += a.a.a.a.z(10, this.fdc);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.protocal.b
 * JD-Core Version:    0.6.2
 */