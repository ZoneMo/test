package com.tencent.mm.an;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import com.tencent.mm.sdk.platformtools.al;

public final class a
{
  private static float density = -1.0F;
  private static b gaD = null;

  public static int fromDPToPix(Context paramContext, int paramInt)
  {
    return Math.round(getDensity(paramContext) * paramInt);
  }

  public static float getDensity(Context paramContext)
  {
    if (paramContext == null)
      paramContext = al.getContext();
    if (density < 0.0F)
      density = paramContext.getResources().getDisplayMetrics().density;
    return density;
  }

  public static int i(Context paramContext, int paramInt)
  {
    if (gaD == null)
      return paramContext.getResources().getColor(paramInt);
    return gaD.aym();
  }

  public static ColorStateList j(Context paramContext, int paramInt)
  {
    if (gaD == null)
      return paramContext.getResources().getColorStateList(paramInt);
    return gaD.ayn();
  }

  public static Drawable k(Context paramContext, int paramInt)
  {
    if (gaD == null)
      return paramContext.getResources().getDrawable(paramInt);
    return gaD.ayo();
  }

  public static int l(Context paramContext, int paramInt)
  {
    if (gaD == null)
      return paramContext.getResources().getDimensionPixelSize(paramInt);
    return gaD.ayp();
  }

  public static String m(Context paramContext, int paramInt)
  {
    if (gaD == null)
      return paramContext.getResources().getString(paramInt);
    return gaD.ayq();
  }

  public static int n(Context paramContext, int paramInt)
  {
    return Math.round(paramInt / getDensity(paramContext));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.an.a
 * JD-Core Version:    0.6.2
 */