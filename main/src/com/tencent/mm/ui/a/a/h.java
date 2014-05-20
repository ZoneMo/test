package com.tencent.mm.ui.a.a;

public final class h extends Throwable
{
  private int dsC = 0;
  private String hax;

  public h(String paramString)
  {
    super(paramString);
  }

  public h(String paramString1, String paramString2, int paramInt)
  {
    super(paramString1);
    this.hax = paramString2;
    this.dsC = paramInt;
  }

  public final String aLM()
  {
    return this.hax;
  }

  public final int getErrorCode()
  {
    return this.dsC;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.a.a.h
 * JD-Core Version:    0.6.2
 */