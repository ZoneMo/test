package com.tencent.mm.plugin.chatroom.b;

public final class b extends com.tencent.mm.am.a
{
  public String bPx;
  public String cTv;
  public int cWs;

  public static boolean a(a.a.a.a.a parama, b paramb, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramb.bPx = parama.aPS();
      return true;
    case 2:
      paramb.cTv = parama.aPS();
      return true;
    case 3:
    }
    paramb.cWs = parama.aPQ();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.bPx != null)
      parama.A(1, this.bPx);
    if (this.cTv != null)
      parama.A(2, this.cTv);
    parama.by(3, this.cWs);
  }

  public final int ns()
  {
    String str = this.bPx;
    int i = 0;
    if (str != null)
      i = 0 + a.a.a.a.z(1, this.bPx);
    if (this.cTv != null)
      i += a.a.a.a.z(2, this.cTv);
    return i + a.a.a.a.br(3, this.cWs);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.b.b
 * JD-Core Version:    0.6.2
 */