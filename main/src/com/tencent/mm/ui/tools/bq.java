package com.tencent.mm.ui.tools;

import com.tencent.mm.sdk.platformtools.z;

final class bq
{
  private String hje;
  private String hjf;
  private String hjg;

  bq(String paramString1, String paramString2, String paramString3)
  {
    this.hje = paramString1;
    this.hjf = paramString2;
    this.hjg = paramString3;
  }

  public final String getDisplayName()
  {
    String str = z.azj();
    if (str.equals("zh_CN"))
      return this.hje;
    if ((str.equals("zh_TW")) || (str.equals("zh_HK")))
      return this.hjf;
    return this.hjg;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bq
 * JD-Core Version:    0.6.2
 */