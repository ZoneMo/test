package com.tencent.mm.ag;

import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;

public final class d extends ah
{
  public static final String[] cjC = arrayOfString;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(c.cfX, "WebViewCacheInfo");
  }

  public d(af paramaf)
  {
    super(paramaf, c.cfX, "WebViewCacheInfo", null);
  }

  public final c et(int paramInt)
  {
    aa.d("MicroMsg.WebViewCacheInfoStorage", "get, urlHash = " + paramInt);
    c localc = new c();
    localc.field_urlHash = paramInt;
    if (super.c(localc, new String[0]))
      return localc;
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ag.d
 * JD-Core Version:    0.6.2
 */