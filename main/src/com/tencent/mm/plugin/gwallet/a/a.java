package com.tencent.mm.plugin.gwallet.a;

public final class a extends Exception
{
  k dsP;

  public a(int paramInt, String paramString)
  {
    this(new k(paramInt, paramString));
  }

  private a(k paramk)
  {
    this(paramk, null);
  }

  private a(k paramk, Exception paramException)
  {
    super(paramk.dtj, paramException);
    this.dsP = paramk;
  }

  public a(String paramString, Exception paramException)
  {
    this(new k(-1001, paramString), paramException);
  }

  public final k QB()
  {
    return this.dsP;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.a.a
 * JD-Core Version:    0.6.2
 */