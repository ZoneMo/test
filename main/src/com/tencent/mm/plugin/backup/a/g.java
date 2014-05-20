package com.tencent.mm.plugin.backup.a;

public final class g extends com.tencent.mm.am.a
{
  public String bRt;
  public String cJh;
  public int cJk;
  public int csY;
  public String mediaId;
  public int type;

  public static boolean a(a.a.a.a.a parama, g paramg, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramg.csY = parama.aPQ();
      return true;
    case 2:
      paramg.cJh = parama.aPS();
      return true;
    case 3:
      paramg.mediaId = parama.aPS();
      return true;
    case 4:
      paramg.bRt = parama.aPS();
      return true;
    case 5:
      paramg.type = parama.aPQ();
      return true;
    case 6:
    }
    paramg.cJk = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.by(1, this.csY);
    if (this.cJh != null)
      parama.A(2, this.cJh);
    if (this.mediaId != null)
      parama.A(3, this.mediaId);
    if (this.bRt != null)
      parama.A(4, this.bRt);
    parama.by(5, this.type);
    parama.by(6, this.cJk);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.csY);
    if (this.cJh != null)
      i += a.a.a.a.z(2, this.cJh);
    if (this.mediaId != null)
      i += a.a.a.a.z(3, this.mediaId);
    if (this.bRt != null)
      i += a.a.a.a.z(4, this.bRt);
    return i + a.a.a.a.br(5, this.type) + a.a.a.a.br(6, this.cJk);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.a.g
 * JD-Core Version:    0.6.2
 */