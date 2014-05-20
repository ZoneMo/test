package com.tencent.mm.protocal.a;

public final class rw extends com.tencent.mm.am.a
{
  private String fUe;
  private boolean fUf;

  public static boolean a(a.a.a.a.a parama, rw paramrw, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return false;
    case 1:
    }
    paramrw.sn(parama.aPS());
    return true;
  }

  public final void a(a.a.a.c.a parama)
  {
    if (this.fUf)
      parama.A(1, this.fUe);
  }

  public final String getString()
  {
    return this.fUe;
  }

  public final int ns()
  {
    boolean bool = this.fUf;
    int i = 0;
    if (bool)
      i = 0 + a.a.a.b.b.a.z(1, this.fUe);
    return i + 0;
  }

  public final rw sn(String paramString)
  {
    this.fUe = paramString;
    this.fUf = true;
    return this;
  }

  public final byte[] toByteArray()
  {
    return super.toByteArray();
  }

  public final String toString()
  {
    return this.fUe;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.a.rw
 * JD-Core Version:    0.6.2
 */