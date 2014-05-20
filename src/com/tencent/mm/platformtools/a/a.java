package com.tencent.mm.platformtools.a;

import android.content.Context;
import android.content.res.AssetManager;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class a
{
  private static Map ceA;

  public static String x(Context paramContext, String paramString)
  {
    if (ceA == null);
    try
    {
      ceA = u.sy(cj.b(paramContext.getAssets().open("profile.ini")));
      label24: if (ceA == null)
        return null;
      return (String)ceA.get(paramString);
    }
    catch (Exception localException)
    {
      break label24;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.a.a
 * JD-Core Version:    0.6.2
 */