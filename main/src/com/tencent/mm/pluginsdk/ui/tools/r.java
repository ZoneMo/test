package com.tencent.mm.pluginsdk.ui.tools;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.al;

public final class r
{
  private static int fuz = -1;

  public static final int bc(Context paramContext)
  {
    if (fuz > 0)
      return fuz;
    if (!bf(paramContext))
      return al.azv().getInt("keybord_height_prefs", 690);
    int i = al.azv().getInt("keybord_height_prefs", a.fromDPToPix(paramContext, 230));
    fuz = i;
    return i;
  }

  private static int bd(Context paramContext)
  {
    if (!bf(paramContext))
      return 0;
    return a.fromDPToPix(paramContext, 320);
  }

  private static int be(Context paramContext)
  {
    if (!bf(paramContext))
      return 0;
    return a.fromDPToPix(paramContext, 230);
  }

  private static final boolean bf(Context paramContext)
  {
    if (paramContext == null)
      paramContext = al.getContext();
    return paramContext != null;
  }

  public static final boolean h(Context paramContext, int paramInt)
  {
    if (fuz == paramInt)
      return true;
    if (!bf(paramContext))
      return false;
    if (paramInt > bd(paramContext))
      paramInt = bd(paramContext);
    if (paramInt < be(paramContext))
      paramInt = be(paramContext);
    fuz = paramInt;
    return al.azv().edit().putInt("keybord_height_prefs", paramInt).commit();
  }

  public static final boolean kT(int paramInt)
  {
    return (paramInt <= 320) && (paramInt >= 230);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.r
 * JD-Core Version:    0.6.2
 */