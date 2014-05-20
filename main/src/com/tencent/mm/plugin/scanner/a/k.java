package com.tencent.mm.plugin.scanner.a;

import com.tencent.mm.sdk.platformtools.cj;

public final class k
{
  private String cxZ;
  private String dHm;
  private String ebA;
  private String ebw;
  private String ebx;
  private String eby;
  private String ebz;

  public k(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if (paramString1 == null)
      paramString1 = "";
    this.ebw = paramString1;
    if (paramString2 == null)
      paramString2 = "";
    this.ebx = paramString2;
    if (paramString3 == null)
      paramString3 = "";
    this.eby = paramString3;
    if (paramString4 == null)
      paramString4 = "";
    this.ebz = paramString4;
    if (paramString5 == null)
      paramString5 = "";
    this.cxZ = paramString5;
    if (paramString6 == null)
      paramString6 = "";
    this.ebA = paramString6;
    if (paramString7 == null)
      paramString7 = "";
    this.dHm = paramString7;
  }

  public final String ZZ()
  {
    if ((cj.ic(this.ebw)) || (cj.ic(this.ebx)) || (cj.ic(this.eby)) || (cj.ic(this.ebz)) || (cj.ic(this.cxZ)) || (cj.ic(this.dHm)))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      if (this.dHm.length() > 0)
      {
        localStringBuilder1.append(this.dHm);
        localStringBuilder1.append("\n");
      }
      if (this.cxZ.length() > 0)
        localStringBuilder1.append(this.cxZ + " ");
      if (this.ebz.length() > 0)
        localStringBuilder1.append(this.ebz);
      if ((this.cxZ.length() > 0) || (this.ebz.length() > 0))
        localStringBuilder1.append("\n");
      if (this.eby.length() > 0)
      {
        localStringBuilder1.append(this.eby + " ");
        localStringBuilder1.append("\n");
      }
      if (this.ebx.length() > 0)
      {
        localStringBuilder1.append(this.ebx);
        localStringBuilder1.append("\n");
      }
      if (this.ebw.length() > 0)
      {
        localStringBuilder1.append(this.ebw);
        localStringBuilder1.append("\n");
      }
      if (this.ebA.length() > 0)
        localStringBuilder1.append(this.ebA);
      return localStringBuilder1.toString();
    }
    StringBuilder localStringBuilder2 = new StringBuilder();
    if (this.ebw.length() > 0)
    {
      localStringBuilder2.append(this.ebw);
      localStringBuilder2.append("\n");
    }
    if (this.ebx.length() > 0)
    {
      localStringBuilder2.append(this.ebx);
      localStringBuilder2.append("\n");
    }
    if (this.eby.length() > 0)
    {
      localStringBuilder2.append(this.eby);
      localStringBuilder2.append("\n");
    }
    if (this.ebz.length() > 0)
      localStringBuilder2.append(this.ebz + " ");
    if (this.cxZ.length() > 0)
      localStringBuilder2.append(this.cxZ + " ");
    if (this.ebA.length() > 0)
      localStringBuilder2.append(this.ebA);
    if ((this.ebz.length() > 0) || (this.cxZ.length() > 0))
      localStringBuilder2.append("\n");
    if (this.dHm.length() > 0)
      localStringBuilder2.append(this.dHm);
    return localStringBuilder2.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.k
 * JD-Core Version:    0.6.2
 */