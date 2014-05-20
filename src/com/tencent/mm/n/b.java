package com.tencent.mm.n;

import com.tencent.mm.sdk.platformtools.cj;

public final class b
{
  private int clD;
  private com.tencent.mm.am.a clE;
  private com.tencent.mm.am.a clF;
  private int clG = -2147483648;
  private int clH = -2147483648;
  private boolean clI = true;
  private String uri;

  public final void a(com.tencent.mm.am.a parama)
  {
    this.clE = parama;
  }

  public final void b(com.tencent.mm.am.a parama)
  {
    this.clF = parama;
  }

  public final void cN(int paramInt)
  {
    this.clD = paramInt;
  }

  public final void cO(int paramInt)
  {
    this.clG = paramInt;
  }

  public final void cP(int paramInt)
  {
    this.clH = paramInt;
  }

  public final void es(String paramString)
  {
    this.uri = paramString;
  }

  public final void ww()
  {
    this.clI = false;
  }

  public final a wx()
  {
    if ((this.clE == null) || (this.clF == null) || (cj.hX(this.uri)) || (this.clD <= 0) || (this.clG == -2147483648) || (this.clH == -2147483648))
      throw new IllegalArgumentException();
    return new a(this.clE, this.clF, this.uri, this.clD, this.clG, this.clH, this.clI, (byte)0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.b
 * JD-Core Version:    0.6.2
 */