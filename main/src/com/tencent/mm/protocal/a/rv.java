package com.tencent.mm.protocal.a;

public final class rv extends com.tencent.mm.am.a
{
  private int fUa;
  private boolean fUb;
  private com.tencent.mm.am.b fUc;
  private boolean fUd;

  public static boolean a(a.a.a.a.a parama, rv paramrv, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
      paramrv.lu(parama.aPP());
      return true;
    case 2:
    }
    paramrv.a(parama.aPX());
    return true;
  }

  private rv ayj()
  {
    if (!this.fUb)
      throw new a.a.a.b("Not all required fields were included (false = not included in message),  iLen:" + this.fUb);
    return this;
  }

  private rv lu(int paramInt)
  {
    this.fUa = paramInt;
    this.fUb = true;
    return this;
  }

  public final rv a(com.tencent.mm.am.b paramb)
  {
    if (paramb == null)
      bM(null);
    this.fUc = paramb;
    this.fUd = true;
    lu(this.fUc.size());
    return this;
  }

  public final void a(a.a.a.c.a parama)
  {
    parama.bx(1, this.fUa);
    if (this.fUd)
      parama.c(2, this.fUc);
  }

  public final int ayg()
  {
    return this.fUa;
  }

  public final com.tencent.mm.am.b ayh()
  {
    return this.fUc;
  }

  public final byte[] ayi()
  {
    return this.fUc.getBytes();
  }

  public final rv bM(byte[] paramArrayOfByte)
  {
    com.tencent.mm.am.b localb = com.tencent.mm.am.b.au(paramArrayOfByte);
    a(localb);
    lu(localb.size());
    return this;
  }

  public final rv bN(byte[] paramArrayOfByte)
  {
    a.a.a.a.a locala = new a.a.a.a.a(paramArrayOfByte, fxi);
    for (int i = locala.aPY(); ; i = locala.aPY())
    {
      if (i <= 0)
        return ayj();
      if (!a(locala, this, i))
        locala.aPZ();
    }
  }

  public final rv l(byte[] paramArrayOfByte, int paramInt)
  {
    com.tencent.mm.am.b localb = com.tencent.mm.am.b.b(paramArrayOfByte, 0, paramInt);
    a(localb);
    lu(localb.size());
    return this;
  }

  public final int ns()
  {
    int i = 0 + a.a.a.a.bq(1, this.fUa);
    if (this.fUd)
      i += a.a.a.a.a(2, this.fUc);
    return i + 0;
  }

  public final byte[] toByteArray()
  {
    ayj();
    return super.toByteArray();
  }

  public final String toString()
  {
    String str = new StringBuilder(String.valueOf("")).append(getClass().getName()).append("(").toString() + "iLen = " + this.fUa + "   ";
    if (this.fUd)
      str = str + "Buffer = " + this.fUc + "   ";
    return str + ")";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rv
 * JD-Core Version:    0.6.2
 */