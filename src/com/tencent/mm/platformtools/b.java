package com.tencent.mm.platformtools;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import com.tencent.mm.sdk.platformtools.h;
import java.io.InputStream;

public final class b
{
  public static int a(Context paramContext, float paramFloat)
  {
    new g();
    return Math.round(paramFloat * paramContext.getResources().getDisplayMetrics().densityDpi / 160.0F);
  }

  public static Bitmap a(InputStream paramInputStream, float paramFloat)
  {
    new g();
    return h.a(paramInputStream, paramFloat);
  }

  public static String ad(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    return localDisplayMetrics.heightPixels + "x" + localDisplayMetrics.widthPixels;
  }

  public static String ae(Context paramContext)
  {
    new g();
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    Configuration localConfiguration = paramContext.getResources().getConfiguration();
    String str1;
    StringBuilder localStringBuilder;
    if (localDisplayMetrics.density < 1.0F)
    {
      str1 = "" + "LDPI";
      localStringBuilder = new StringBuilder().append(str1);
      if (localConfiguration.orientation != 2)
        break label152;
    }
    label152: for (String str2 = "_L"; ; str2 = "_P")
    {
      return str2;
      if (localDisplayMetrics.density >= 1.5F)
      {
        str1 = "" + "HDPI";
        break;
      }
      str1 = "" + "MDPI";
      break;
    }
  }

  public static Bitmap decodeStream(InputStream paramInputStream)
  {
    new g();
    return h.decodeStream(paramInputStream);
  }

  public static Bitmap e(String paramString, float paramFloat)
  {
    new g();
    float f = 160.0F * paramFloat;
    Bitmap localBitmap = h.h(paramString, paramFloat);
    if (localBitmap != null)
      localBitmap.setDensity((int)f);
    return localBitmap;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.b
 * JD-Core Version:    0.6.2
 */