package com.tencent.mm.n;

public final class a extends v
{
  private c clB = null;
  private d clC = null;
  private int clD;
  private String uri;

  private a(com.tencent.mm.am.a parama1, com.tencent.mm.am.a parama2, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    this.clB = new c(parama1, paramInt1, paramInt2, paramBoolean);
    this.clC = new d(parama2, paramInt3, paramBoolean);
    this.uri = paramString;
    this.clD = paramInt1;
  }

  public final int getType()
  {
    return this.clD;
  }

  public final String getUri()
  {
    return this.uri;
  }

  public final com.tencent.mm.am.a wr()
  {
    return c.a(this.clB);
  }

  public final com.tencent.mm.am.a ws()
  {
    return d.a(this.clC);
  }

  public final d wt()
  {
    return this.clC;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.n.a
 * JD-Core Version:    0.6.2
 */