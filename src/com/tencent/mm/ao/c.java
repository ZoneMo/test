package com.tencent.mm.ao;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.tencent.mm.sdk.platformtools.aa;

public final class c
{
  private static c gfY = null;
  private String[] gfZ;
  private String[] gga;

  private c(Context paramContext)
  {
    this.gfZ = paramContext.getResources().getStringArray(com.tencent.mm.c.Zj);
    this.gga = paramContext.getResources().getStringArray(com.tencent.mm.c.Zi);
  }

  public static int bH(Context paramContext)
  {
    int i = bJ(paramContext).gfZ.length;
    if (i <= 0)
      i = paramContext.getResources().getStringArray(com.tencent.mm.c.Zj).length;
    return i;
  }

  public static int bI(Context paramContext)
  {
    int i = bJ(paramContext).gga.length;
    if (i <= 0)
      i = paramContext.getResources().getStringArray(com.tencent.mm.c.Zi).length;
    return i;
  }

  private static c bJ(Context paramContext)
  {
    if (gfY == null)
      gfY = new c(paramContext);
    return gfY;
  }

  public static Drawable t(Context paramContext, int paramInt)
  {
    bJ(paramContext);
    int i = v(paramContext, paramInt);
    if (i == 0)
      return null;
    return paramContext.getResources().getDrawable(i);
  }

  public static Drawable u(Context paramContext, int paramInt)
  {
    if (paramInt < 100)
      paramInt += 100;
    bJ(paramContext);
    int i = v(paramContext, paramInt);
    if (i == 0)
      return null;
    return paramContext.getResources().getDrawable(i);
  }

  private static int v(Context paramContext, int paramInt)
  {
    if ((paramInt >= 0) && (paramInt <= 99))
    {
      int k = paramContext.getResources().getIdentifier("smiley_" + paramInt, "drawable", paramContext.getPackageName());
      if (k == 0)
        return 0;
      return k;
    }
    bJ(paramContext);
    int i;
    switch (paramInt)
    {
    default:
      i = 0;
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    }
    while (true)
    {
      int j = paramContext.getResources().getIdentifier("emoji_" + i, "drawable", paramContext.getPackageName());
      if (j == 0)
        break;
      return j;
      i = 360;
      continue;
      i = 351;
      continue;
      i = 357;
      continue;
      i = 348;
      continue;
      i = 355;
      continue;
      i = 352;
      continue;
      i = 96;
      continue;
      i = 342;
      continue;
      i = 344;
      continue;
      i = 349;
      continue;
      i = 353;
      continue;
      i = 115;
      continue;
      i = 116;
      continue;
      i = 394;
      continue;
      i = 368;
      continue;
      i = 165;
      continue;
      i = 136;
      continue;
      i = 337;
      continue;
      i = 280;
      continue;
      i = 107;
    }
  }

  public static String w(Context paramContext, int paramInt)
  {
    if (paramInt < 0)
    {
      aa.w("MicroMsg.MergerSmileyManager", "get text, error index");
      return "";
    }
    if (bJ(paramContext).gfZ.length <= paramInt)
      return x(paramContext, paramInt - 100);
    return bJ(paramContext).gfZ[paramInt];
  }

  public static String x(Context paramContext, int paramInt)
  {
    if (paramInt < 0)
    {
      aa.w("MicroMsg.MergerSmileyManager", "get emoji text, error index down");
      return "";
    }
    if (bJ(paramContext).gga.length <= paramInt)
    {
      aa.w("MicroMsg.MergerSmileyManager", "get emoji text, error index up");
      return "";
    }
    return bJ(paramContext).gga[paramInt];
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ao.c
 * JD-Core Version:    0.6.2
 */