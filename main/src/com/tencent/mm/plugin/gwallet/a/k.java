package com.tencent.mm.plugin.gwallet.a;

public final class k
{
  int dti;
  String dtj;

  public k(int paramInt, String paramString)
  {
    this.dti = paramInt;
    if ((paramString == null) || (paramString.trim().length() == 0))
    {
      this.dtj = b.gl(paramInt);
      return;
    }
    this.dtj = (paramString + " (response: " + b.gl(paramInt) + ")");
  }

  public final int QC()
  {
    return this.dti;
  }

  public final boolean QD()
  {
    return this.dti == 0;
  }

  public final boolean QE()
  {
    return this.dti == 7;
  }

  public final String toString()
  {
    return "IabResult: " + this.dtj;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.a.k
 * JD-Core Version:    0.6.2
 */