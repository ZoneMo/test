package com.tencent.mm.plugin.scanner.a;

import android.content.Context;
import com.tencent.mm.j.b;
import com.tencent.mm.plugin.scanner.b.m;
import com.tencent.mm.plugin.scanner.b.n;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class g
{
  public static n O(String paramString, int paramInt)
  {
    if (cj.hX(paramString));
    Map localMap;
    do
    {
      int i;
      do
      {
        return null;
        i = m.mF(paramString);
        if (i == 3)
          return m.P(paramString, paramInt);
      }
      while ((i != 4) || (paramString == null));
      localMap = u.aL(paramString, "search");
    }
    while (localMap == null);
    n localn = new n();
    localn.field_xmlType = 4;
    localn.field_xml = paramString;
    localn.egv = a.d(localMap, ".search");
    return localn;
  }

  public static String a(Context paramContext, n paramn)
  {
    b localb = new b();
    localb.appId = hC(paramn.field_functionType);
    localb.title = paramn.field_title;
    localb.description = paramn.field_subtitle;
    localb.type = 10;
    localb.url = paramn.field_shareurl;
    localb.caw = "";
    localb.appName = m.b(paramContext, paramn.field_type);
    localb.thumburl = paramn.field_thumburl;
    localb.cgU = paramn.field_type;
    localb.cgV = m.b(paramn);
    return b.b(localb);
  }

  public static String hC(int paramInt)
  {
    if (paramInt == 4)
      return "wxfbc915ff7c30e335";
    if (paramInt == 3)
      return "wx482a4001c37e2b74";
    return "wxfbc915ff7c30e335";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.a.g
 * JD-Core Version:    0.6.2
 */