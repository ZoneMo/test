package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.sdk.platformtools.cj;

public final class l
{
  private String ebB;
  private String ebC;
  private String ebD;

  public l(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null)
      paramString1 = "";
    this.ebB = paramString1;
    if (paramString2 == null)
      paramString2 = "";
    this.ebC = paramString2;
    if (paramString3 == null)
      paramString3 = "";
    this.ebD = paramString3;
  }

  public final String ZZ()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((cj.ic(this.ebB)) || (cj.ic(this.ebC)) || (cj.ic(this.ebD)))
    {
      if (this.ebD.trim().length() > 0)
        localStringBuilder.append(this.ebD);
      if (this.ebC.trim().length() > 0)
        localStringBuilder.append(this.ebC);
      if (this.ebB.trim().length() > 0)
        localStringBuilder.append(this.ebB);
    }
    while (true)
    {
      return localStringBuilder.toString();
      if (this.ebB.trim().length() > 0)
        localStringBuilder.append(this.ebB);
      if (this.ebC.trim().length() > 0)
      {
        localStringBuilder.append(" ");
        localStringBuilder.append(this.ebC);
      }
      if (this.ebD.trim().length() > 0)
      {
        localStringBuilder.append(" ");
        localStringBuilder.append(this.ebD);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.l
 * JD-Core Version:    0.6.2
 */