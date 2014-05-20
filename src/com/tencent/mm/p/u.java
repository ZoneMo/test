package com.tencent.mm.p;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;

public final class u
{
  public static Bitmap E(String paramString1, String paramString2)
  {
    Bitmap localBitmap1;
    if (!be.uz().isSDCardAvailable())
      localBitmap1 = cV(0);
    do
    {
      boolean bool;
      do
      {
        do
        {
          return localBitmap1;
          localBitmap1 = null;
        }
        while (paramString1 == null);
        bool = be.se();
        localBitmap1 = null;
      }
      while (!bool);
      if (paramString2 != null)
        break;
      paramString2 = F(paramString1, null);
      localBitmap1 = null;
    }
    while (paramString2 == null);
    Bitmap localBitmap2 = v.b(ab.yf(), paramString1);
    if (localBitmap2 != null)
      return localBitmap2;
    ab.yf().H(paramString1, paramString2);
    return null;
  }

  private static String F(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (!be.se()))
      paramString2 = null;
    a locala;
    do
    {
      return paramString2;
      locala = ab.ye().eG(paramString1);
    }
    while ((locala == null) || (locala.field_brandIconURL == null));
    return locala.field_brandIconURL;
  }

  public static Bitmap b(String paramString1, String paramString2, int paramInt)
  {
    Bitmap localBitmap1;
    if (!be.uz().isSDCardAvailable())
      localBitmap1 = cV(paramInt);
    do
    {
      boolean bool;
      do
      {
        do
        {
          return localBitmap1;
          localBitmap1 = null;
        }
        while (paramString1 == null);
        bool = be.se();
        localBitmap1 = null;
      }
      while (!bool);
      if (paramString2 != null)
        break;
      paramString2 = F(paramString1, null);
      localBitmap1 = null;
    }
    while (paramString2 == null);
    Bitmap localBitmap2 = v.a(ab.yf(), paramString1, paramString2);
    if (localBitmap2 != null)
      return localBitmap2;
    ab.yf().H(paramString1, paramString2);
    return null;
  }

  private static Bitmap cV(int paramInt)
  {
    Bitmap localBitmap = null;
    if (paramInt <= 0);
    do
    {
      return localBitmap;
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      h.a(localOptions);
      localBitmap = BitmapFactory.decodeStream(al.getContext().getResources().openRawResource(paramInt), null, localOptions);
    }
    while (localBitmap == null);
    return h.a(localBitmap, false, localBitmap.getWidth() >> 1);
  }

  public static Bitmap eN(String paramString)
  {
    if ((cj.hX(paramString)) || (!be.uz().isSDCardAvailable()) || (!be.se()))
      return null;
    Bitmap localBitmap = v.a(ab.yf(), paramString);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    boolean bool = false;
    if (localBitmap == null)
      bool = true;
    arrayOfObject[1] = String.valueOf(bool);
    aa.e("MicroMsg.BrandLogic", "get verify user icon = %s, is null ? %s", arrayOfObject);
    return localBitmap;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.u
 * JD-Core Version:    0.6.2
 */