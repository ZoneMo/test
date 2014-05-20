package com.tencent.a.a;

import com.tencent.mapapi.a.e;

public final class a
{
  public static c a(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    if (!b.isInitialized())
      throw new g();
    try
    {
      c localc = e.a(false, paramString1, paramString2, paramArrayOfByte);
      return localc;
    }
    catch (Exception localException)
    {
      throw localException;
    }
  }

  public static c h(String paramString1, String paramString2)
  {
    if (!b.isInitialized())
      throw new g();
    try
    {
      c localc = e.a(true, paramString1, paramString2, null);
      return localc;
    }
    catch (Exception localException)
    {
      throw localException;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.a.a.a
 * JD-Core Version:    0.6.2
 */