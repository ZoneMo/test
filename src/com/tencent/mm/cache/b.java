package com.tencent.mm.cache;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;

public final class b
{
  private static Map caU = new HashMap();

  private static Object a(a parama, String paramString)
  {
    if (parama == null)
    {
      aa.e("MicroMsg.ICacheService.Factory", "null service");
      return null;
    }
    try
    {
      Object localObject = parama.get(paramString);
      return localObject;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ICacheService.Factory", "cast failed, different type ?");
    }
    return null;
  }

  public static void a(String paramString, a parama)
  {
    caU.put(paramString, parama);
  }

  public static void a(String paramString1, String paramString2, Object paramObject)
  {
    a locala = bf(paramString1);
    if (locala == null)
    {
      aa.e("MicroMsg.ICacheService.Factory", "null service");
      return;
    }
    locala.h(paramString2, paramObject);
  }

  private static Object b(a parama, String paramString)
  {
    if (parama == null)
    {
      aa.e("MicroMsg.ICacheService.Factory", "null service");
      return null;
    }
    try
    {
      Object localObject = parama.remove(paramString);
      return localObject;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ICacheService.Factory", "cast failed, different type ?");
    }
    return null;
  }

  private static a bf(String paramString)
  {
    return (a)caU.get(paramString);
  }

  public static Object k(String paramString1, String paramString2)
  {
    return a(bf(paramString1), paramString2);
  }

  public static void l(String paramString1, String paramString2)
  {
    b(bf(paramString1), paramString2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.cache.b
 * JD-Core Version:    0.6.2
 */