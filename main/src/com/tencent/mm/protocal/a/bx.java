package com.tencent.mm.protocal.a;

public final class bx extends com.tencent.mm.am.a
{
  public com.tencent.mm.am.b fCF;
  public int port;
  public int type;

  public static boolean a(a.a.a.a.a parama, bx parambx, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      parambx.type = parama.aPQ();
      return true;
    case 2:
      parambx.port = parama.aPQ();
      return true;
    case 3:
    }
    parambx.fCF = parama.aPX();
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fCF == null)
      throw new a.a.a.b("Not all required fields were included");
    parama.by(1, this.type);
    parama.by(2, this.port);
    if (this.fCF != null)
      parama.c(3, this.fCF);
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.br(1, this.type) + a.a.a.a.br(2, this.port);
    if (this.fCF != null)
      i += a.a.a.a.a(3, this.fCF);
    return i;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.bx
 * JD-Core Version:    0.6.2
 */