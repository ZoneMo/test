package com.tencent.mm.storage;

import java.util.ArrayList;

public final class at
{
  public String bNl;
  public ArrayList dOI = new ArrayList();
  public String giq;
  public int gir;
  public long gis = 0L;

  public at(String paramString1, String paramString2, ak paramak)
  {
    this(paramString1, paramString2, paramak, 0);
  }

  public at(String paramString1, String paramString2, ak paramak, int paramInt)
  {
    this.bNl = paramString1;
    this.giq = paramString2;
    this.gir = paramInt;
    if (paramak != null)
      this.dOI.add(paramak);
  }

  static boolean x(ak paramak)
  {
    return (paramak != null) && (paramak.rO() == 0) && (paramak.getStatus() == 3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.at
 * JD-Core Version:    0.6.2
 */