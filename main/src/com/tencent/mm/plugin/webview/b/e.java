package com.tencent.mm.plugin.webview.b;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;
import java.util.Map;

public final class e
{
  private static Map fet = new HashMap();

  public static void aE(String paramString1, String paramString2)
  {
    aa.d("MicroMsg.WebviewSharedUrlCache", "rawurl:[%s], shareUrl:[%s]", new Object[] { paramString1, paramString2 });
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)))
    {
      aa.e("MicroMsg.WebviewSharedUrlCache", "rawurl is null or share url is null");
      return;
    }
    fet.put(paramString1, paramString2);
  }

  public static void clear()
  {
    fet.clear();
  }

  public static String pT(String paramString)
  {
    aa.d("MicroMsg.WebviewSharedUrlCache", "rawUrl:[%s]", new Object[] { paramString });
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.WebviewSharedUrlCache", "rawUrl is null");
      paramString = null;
    }
    String str;
    do
    {
      return paramString;
      str = (String)fet.get(paramString);
    }
    while (cj.hX(str));
    return str;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.b.e
 * JD-Core Version:    0.6.2
 */