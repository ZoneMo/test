package com.tencent.mm.sdk.platformtools;

import java.util.HashMap;

public final class cg
{
  private static final HashMap gfh = new HashMap();

  public static String getProperty(String paramString)
  {
    return (String)gfh.get(paramString);
  }

  public static void setProperty(String paramString1, String paramString2)
  {
    gfh.put(paramString1, paramString2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.cg
 * JD-Core Version:    0.6.2
 */