package com.tencent.mm.ag;

import com.tencent.mm.plugin.webview.stub.al;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class e
{
  public static boolean a(String paramString, f paramf, al paramal)
  {
    aa.d("MicroMsg.WebViewCacheManager", "get, url = " + paramString);
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.WebViewCacheManager", "get fail, url is null");
      return false;
    }
    if (paramf == null)
    {
      aa.e("MicroMsg.WebViewCacheManager", "get fail, value is null");
      return false;
    }
    try
    {
      String str2 = paramal.jR(truncate(paramString).hashCode());
      str1 = str2;
      if (cj.hX(str1))
      {
        aa.e("MicroMsg.WebViewCacheManager", "get fail, url = " + paramString);
        return false;
      }
    }
    catch (Exception localException)
    {
      String str1;
      while (true)
      {
        aa.w("MicroMsg.WebViewCacheManager", "getCacheInfo, ex = " + localException.getMessage());
        str1 = null;
      }
      paramf.gz(str1);
    }
    return true;
  }

  public static boolean a(String paramString, al paramal)
  {
    aa.d("MicroMsg.WebViewCacheManager", "hasCache, url = " + paramString);
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.WebViewCacheManager", "hasCache fail, url is null");
      return false;
    }
    try
    {
      boolean bool2 = paramal.jS(truncate(paramString).hashCode());
      bool1 = bool2;
      aa.d("MicroMsg.WebViewCacheManager", "hasCache, result = " + bool1);
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.w("MicroMsg.WebViewCacheManager", "hasCacheInfo, ex = " + localException.getMessage());
        boolean bool1 = false;
      }
    }
  }

  public static boolean b(String paramString, f paramf, al paramal)
  {
    if ((cj.hX(paramString)) || (paramf == null))
    {
      aa.e("MicroMsg.WebViewCacheManager", "put fail, invalid arguments, url = " + paramString + ", value = " + paramf);
      return false;
    }
    try
    {
      paramal.r(truncate(paramString).hashCode(), paramf.Dm());
      return true;
    }
    catch (Exception localException)
    {
      aa.w("MicroMsg.WebViewCacheManager", "getCacheInfo, ex = " + localException.getMessage());
    }
    return false;
  }

  private static String truncate(String paramString)
  {
    if (paramString.toLowerCase().startsWith("http://"))
      paramString = paramString.substring(7);
    while (!paramString.toLowerCase().startsWith("https://"))
      return paramString;
    return paramString.substring(8);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ag.e
 * JD-Core Version:    0.6.2
 */