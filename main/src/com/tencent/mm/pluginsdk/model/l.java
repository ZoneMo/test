package com.tencent.mm.pluginsdk.model;

public final class l
{
  private int _id;
  private String bPE;
  private String fgY;
  private int fgZ;

  l(int paramInt1, String paramString1, String paramString2, int paramInt2)
  {
    this._id = paramInt1;
    this.bPE = paramString1;
    this.fgY = paramString2;
    this.fgZ = paramInt2;
  }

  public final String Lg()
  {
    return this.bPE;
  }

  public final int apM()
  {
    return this.fgZ;
  }

  public final String apN()
  {
    return this.fgY;
  }

  public final String toString()
  {
    return "id:" + this._id + ";productId:" + this.bPE + ";full:" + this.fgY + ";productState:" + this.fgZ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.l
 * JD-Core Version:    0.6.2
 */