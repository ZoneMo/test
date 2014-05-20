package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.am;
import com.tencent.mm.ui.base.h;

public final class af
{
  public static boolean aZ(Context paramContext)
  {
    if (!am.sE("network_doctor_shown"))
      return false;
    h.a(paramContext, n.bsp, n.ber, new ah(paramContext), null);
    return true;
  }

  public static boolean k(Context paramContext, String paramString1, String paramString2)
  {
    if (!am.sE("wap_reporter_shown"))
      return false;
    h.a(paramContext, n.bwi, n.ber, new ag(paramContext, paramString1, paramString2), null);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.af
 * JD-Core Version:    0.6.2
 */