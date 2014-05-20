package com.tencent.mm.sdk.platformtools;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;
import com.tencent.mm.compatible.d.a;
import com.tencent.mm.pointers.PInt;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;

public final class h
{
  private static DisplayMetrics cGH = null;
  public static boolean gcl;

  public static boolean S(int paramInt1, int paramInt2)
  {
    return paramInt2 > 2.0D * paramInt1;
  }

  public static boolean T(int paramInt1, int paramInt2)
  {
    return paramInt1 > 2.0D * paramInt2;
  }

  private static Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig, boolean paramBoolean)
  {
    try
    {
      Bitmap localBitmap3 = Bitmap.createBitmap(paramInt1, paramInt2, paramConfig);
      localBitmap1 = localBitmap3;
      return localBitmap1;
    }
    catch (Throwable localThrowable1)
    {
      do
        Bitmap localBitmap1 = null;
      while (paramBoolean);
      try
      {
        if (cGH == null)
          cGH = al.getContext().getResources().getDisplayMetrics();
        DisplayMetrics localDisplayMetrics = cGH;
        if ((paramInt1 > localDisplayMetrics.widthPixels) && (paramInt2 > localDisplayMetrics.heightPixels))
        {
          paramInt1 = localDisplayMetrics.widthPixels;
          paramInt2 = localDisplayMetrics.heightPixels;
        }
        Bitmap localBitmap2 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.RGB_565);
        return localBitmap2;
      }
      catch (Throwable localThrowable2)
      {
      }
    }
    return null;
  }

  private static Bitmap a(int paramInt1, String paramString, byte[] paramArrayOfByte, Uri paramUri, float paramFloat, int paramInt2, int paramInt3)
  {
    int i = 0;
    if ((paramInt2 == 0) && (paramInt3 == 0));
    for (int j = 1; (paramInt2 < 0) || (paramInt3 < 0); j = 0)
      return null;
    try
    {
      BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
      if (paramFloat != 0.0F)
        localOptions1.inDensity = ((int)(paramFloat * 160.0F));
      i = 0;
      if (j == 0)
      {
        localOptions1.inJustDecodeBounds = true;
        a(localOptions1, paramArrayOfByte, paramString, paramUri, paramInt1);
        int k = localOptions1.outWidth;
        int m = localOptions1.outHeight;
        localOptions1 = new BitmapFactory.Options();
        localOptions1.inPreferredConfig = Bitmap.Config.ARGB_8888;
        if (k <= paramInt2)
        {
          i = 0;
          if (m <= paramInt3);
        }
        else
        {
          localOptions1.inSampleSize = ((int)Math.max(k / paramInt2, m / paramInt3));
          i = localOptions1.inSampleSize;
        }
      }
      a(localOptions1);
      Bitmap localBitmap2 = a(localOptions1, paramArrayOfByte, paramString, paramUri, paramInt1);
      return localBitmap2;
    }
    catch (Throwable localThrowable1)
    {
      BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
      if (paramFloat != 0.0F)
        localOptions2.inDensity = ((int)(paramFloat * 160.0F));
      localOptions2.inPreferredConfig = Bitmap.Config.RGB_565;
      if ((j == 0) && (i != 0))
        localOptions2.inSampleSize = i;
      a(localOptions2);
      try
      {
        Bitmap localBitmap1 = a(localOptions2, paramArrayOfByte, paramString, paramUri, paramInt1);
        return localBitmap1;
      }
      catch (Throwable localThrowable2)
      {
      }
    }
    return null;
  }

  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    boolean bool = true;
    if (paramFloat == 0.0F)
      return paramBitmap;
    Matrix localMatrix = new Matrix();
    localMatrix.reset();
    localMatrix.setRotate(paramFloat, paramBitmap.getWidth() / 2, paramBitmap.getHeight() / 2);
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, bool);
    StringBuilder localStringBuilder = new StringBuilder("resultBmp is null: ");
    if (localBitmap == null);
    while (true)
    {
      aa.d("MicroMsg.BitmapUtil", bool + "  degree:" + paramFloat);
      if (paramBitmap != localBitmap)
        paramBitmap.recycle();
      return localBitmap;
      bool = false;
    }
  }

  public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    double d1 = 1.0D * paramBitmap.getHeight() / paramInt1;
    double d2 = 1.0D * paramBitmap.getWidth() / paramInt2;
    if (d1 < d2);
    for (double d3 = d2; (int)d3 <= 1; d3 = d1)
    {
      aa.d("MicroMsg.BitmapUtil", "no need to scale");
      return paramBitmap;
    }
    if (d1 < d2)
      paramInt1 = (int)(1.0D * paramInt2 * paramBitmap.getHeight() / paramBitmap.getWidth());
    while (true)
    {
      aa.d("MicroMsg.BitmapUtil", "bitmap decoded size=" + paramBitmap.getWidth() + "x" + paramBitmap.getHeight());
      Bitmap localBitmap = Bitmap.createScaledBitmap(paramBitmap, paramInt2, paramInt1, true);
      if ((localBitmap == null) || (paramBitmap == localBitmap))
        break;
      paramBitmap.recycle();
      return localBitmap;
      paramInt2 = (int)(1.0D * paramInt1 * paramBitmap.getWidth() / paramBitmap.getHeight());
    }
  }

  public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Object localObject;
    if (paramBitmap == null)
      localObject = null;
    while (true)
    {
      return localObject;
      int i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      float f1 = Math.max(paramInt1 / i, paramInt2 / j);
      float f2 = f1 * i;
      float f3 = f1 * j;
      float f4 = (paramInt1 - f2) / 2.0F;
      float f5 = (paramInt2 - f3) / 2.0F;
      RectF localRectF = new RectF(f4, f5, f2 + f4, f3 + f5);
      Bitmap.Config localConfig = paramBitmap.getConfig();
      if (localConfig == null)
      {
        aa.w("MicroMsg.BitmapUtil", "get center crop bitmap, config is null");
        localConfig = Bitmap.Config.ARGB_8888;
      }
      try
      {
        Bitmap localBitmap2 = Bitmap.createBitmap(paramInt1, paramInt2, localConfig);
        localObject = localBitmap2;
        new Canvas((Bitmap)localObject).drawBitmap(paramBitmap, null, localRectF, null);
        if (paramBoolean)
        {
          paramBitmap.recycle();
          return localObject;
        }
      }
      catch (Throwable localThrowable1)
      {
        try
        {
          Bitmap localBitmap1 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.RGB_565);
          localObject = localBitmap1;
        }
        catch (Throwable localThrowable2)
        {
          aa.e("MicroMsg.BitmapUtil", "BitmapUtil decode getCenterCropBitmap fail");
        }
      }
    }
    return paramBitmap;
  }

  public static Bitmap a(Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    Bitmap localBitmap1;
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
    {
      aa.e("MicroMsg.BitmapUtil", "extractThumbNail height:" + paramInt1 + " width:" + paramInt2);
      localBitmap1 = null;
      return localBitmap1;
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    a(localOptions);
    localOptions.outHeight = paramBitmap.getHeight();
    localOptions.outWidth = paramBitmap.getWidth();
    aa.d("MicroMsg.BitmapUtil", "extractThumbNail: round=" + paramInt2 + "x" + paramInt1 + ", crop=" + paramBoolean1);
    double d1 = 1.0D * localOptions.outHeight / paramInt1;
    double d2 = 1.0D * localOptions.outWidth / paramInt2;
    aa.d("MicroMsg.BitmapUtil", "extractThumbNail: extract beX = " + d2 + ", beY = " + d1);
    double d3;
    if (paramBoolean1)
      if (d1 > d2)
        d3 = d2;
    while (true)
    {
      localOptions.inSampleSize = ((int)d3);
      if (localOptions.inSampleSize <= 1);
      for (localOptions.inSampleSize = 1; localOptions.outHeight * localOptions.outWidth / localOptions.inSampleSize / localOptions.inSampleSize > 2764800; localOptions.inSampleSize = (1 + localOptions.inSampleSize));
      d3 = d1;
      continue;
      if (d1 < d2)
        d3 = d2;
      else
        d3 = d1;
    }
    int j;
    int i;
    if (paramBoolean1)
      if (d1 > d2)
      {
        j = (int)(1.0D * paramInt2 * localOptions.outHeight / localOptions.outWidth);
        i = paramInt2;
        localOptions.inJustDecodeBounds = false;
        aa.d("MicroMsg.BitmapUtil", "bitmap required size=" + i + "x" + j + ", orig=" + localOptions.outWidth + "x" + localOptions.outHeight + ", sample=" + localOptions.inSampleSize);
        localBitmap1 = Bitmap.createScaledBitmap(paramBitmap, i, j, true);
        if (localBitmap1 == null)
          break label618;
        if ((paramBoolean2) && (paramBitmap != localBitmap1))
          paramBitmap.recycle();
      }
    while (true)
    {
      Bitmap localBitmap2;
      if (paramBoolean1)
      {
        localBitmap2 = Bitmap.createBitmap(localBitmap1, localBitmap1.getWidth() - paramInt2 >> 1, localBitmap1.getHeight() - paramInt1 >> 1, paramInt2, paramInt1);
        if (localBitmap2 == null)
          break;
        if ((paramBoolean2) && (localBitmap1 != localBitmap2))
          localBitmap1.recycle();
        aa.d("MicroMsg.BitmapUtil", "bitmap croped size=" + localBitmap2.getWidth() + "x" + localBitmap2.getHeight());
      }
      while (true)
      {
        return localBitmap2;
        i = (int)(1.0D * paramInt1 * localOptions.outWidth / localOptions.outHeight);
        j = paramInt1;
        break;
        if (d1 < d2)
        {
          j = (int)(1.0D * paramInt2 * localOptions.outHeight / localOptions.outWidth);
          i = paramInt2;
          break;
        }
        i = (int)(1.0D * paramInt1 * localOptions.outWidth / localOptions.outHeight);
        j = paramInt1;
        break;
        localBitmap2 = localBitmap1;
      }
      label618: localBitmap1 = paramBitmap;
    }
  }

  public static Bitmap a(Bitmap paramBitmap, boolean paramBoolean, float paramFloat)
  {
    return a(paramBitmap, paramBoolean, paramFloat, false);
  }

  public static Bitmap a(Bitmap paramBitmap, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    if ((paramBitmap == null) || (paramBitmap.isRecycled()))
      aa.e("MicroMsg.BitmapUtil", "getRoundedCornerBitmap in bitmap is null");
    Bitmap localBitmap;
    do
    {
      return null;
      localBitmap = a(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888, paramBoolean2);
    }
    while (localBitmap == null);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
    RectF localRectF = new RectF(localRect);
    localPaint.setAntiAlias(true);
    localPaint.setDither(true);
    localPaint.setFilterBitmap(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-4144960);
    localCanvas.drawRoundRect(localRectF, paramFloat, paramFloat, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    if (paramBoolean1)
      paramBitmap.recycle();
    return localBitmap;
  }

  private static Bitmap a(BitmapFactory.Options paramOptions, byte[] paramArrayOfByte, String paramString, Uri paramUri, int paramInt)
  {
    if ((cj.A(paramArrayOfByte)) && (cj.hX(paramString)) && (paramUri == null) && (paramInt <= 0))
      return null;
    if (!cj.A(paramArrayOfByte));
    for (int i = 1; i != 0; i = 0)
      return BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
    if (paramUri != null)
    {
      InputStream localInputStream = al.getContext().getContentResolver().openInputStream(paramUri);
      Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream, null, paramOptions);
      localInputStream.close();
      return localBitmap;
    }
    if (paramInt > 0)
      return a.decodeResource(al.getContext().getResources(), paramInt, paramOptions);
    return BitmapFactory.decodeFile(paramString, paramOptions);
  }

  public static Bitmap a(InputStream paramInputStream, float paramFloat)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    if (paramFloat != 0.0F)
      localOptions.inDensity = ((int)(160.0F * paramFloat));
    localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
    a(localOptions);
    try
    {
      Bitmap localBitmap2 = BitmapFactory.decodeStream(paramInputStream, null, localOptions);
      return localBitmap2;
    }
    catch (OutOfMemoryError localOutOfMemoryError1)
    {
      localOptions.inPreferredConfig = Bitmap.Config.RGB_565;
      a(localOptions);
      try
      {
        Bitmap localBitmap1 = BitmapFactory.decodeStream(paramInputStream, null, localOptions);
        return localBitmap1;
      }
      catch (OutOfMemoryError localOutOfMemoryError2)
      {
      }
    }
    return null;
  }

  private static Bitmap a(String paramString, int paramInt1, int paramInt2, float paramFloat)
  {
    return a(0, paramString, null, null, paramFloat, paramInt1, paramInt2);
  }

  @TargetApi(11)
  public static Bitmap a(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Object localObject;
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.BitmapUtil", "extractThumbNail path null or nil");
      localObject = null;
    }
    label310: label745: 
    while (true)
    {
      return localObject;
      if ((paramInt1 <= 0) || (paramInt2 <= 0))
      {
        aa.e("MicroMsg.BitmapUtil", "extractThumbNail height:" + paramInt1 + " width:" + paramInt2);
        return null;
      }
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      double d1;
      double d2;
      while (true)
      {
        try
        {
          localOptions.inJustDecodeBounds = true;
          Bitmap localBitmap1 = BitmapFactory.decodeFile(paramString, localOptions);
          if (localBitmap1 != null)
            localBitmap1.recycle();
          aa.d("MicroMsg.BitmapUtil", "extractThumbNail: round=" + paramInt2 + "x" + paramInt1 + ", crop=" + paramBoolean);
          d1 = 1.0D * localOptions.outHeight / paramInt1;
          d2 = 1.0D * localOptions.outWidth / paramInt2;
          aa.d("MicroMsg.BitmapUtil", "extractThumbNail: extract beX = " + d2 + ", beY = " + d1);
          if (!paramBoolean)
            break label310;
          if (d1 > d2)
          {
            d3 = d2;
            localOptions.inSampleSize = ((int)d3);
            if (localOptions.inSampleSize <= 1)
              localOptions.inSampleSize = 1;
            if (localOptions.outHeight * localOptions.outWidth / localOptions.inSampleSize / localOptions.inSampleSize <= 2764800)
              break;
            localOptions.inSampleSize = (1 + localOptions.inSampleSize);
            continue;
          }
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          aa.e("MicroMsg.BitmapUtil", "decode bitmap failed: " + localOutOfMemoryError.getMessage());
          return null;
        }
        double d3 = d1;
        continue;
        if (d1 < d2)
          d3 = d2;
        else
          d3 = d1;
      }
      int i;
      int j;
      if (paramBoolean)
        if (d1 > d2)
        {
          double d4 = 1.0D * paramInt2;
          i = (int)(d4 * localOptions.outHeight / localOptions.outWidth);
          j = paramInt2;
        }
      Bitmap localBitmap2;
      while (true)
      {
        localOptions.inJustDecodeBounds = false;
        if (Build.VERSION.SDK_INT >= 11)
          localOptions.inMutable = true;
        aa.d("MicroMsg.BitmapUtil", "bitmap required size=" + j + "x" + i + ", orig=" + localOptions.outWidth + "x" + localOptions.outHeight + ", sample=" + localOptions.inSampleSize);
        localBitmap2 = BitmapFactory.decodeFile(paramString, localOptions);
        a(localOptions);
        if (localBitmap2 != null)
          break;
        aa.e("MicroMsg.BitmapUtil", "bitmap decode failed");
        return null;
        j = (int)(1.0D * paramInt1 * localOptions.outWidth / localOptions.outHeight);
        i = paramInt1;
        continue;
        if (d1 < d2)
        {
          i = (int)(1.0D * paramInt2 * localOptions.outHeight / localOptions.outWidth);
          j = paramInt2;
        }
        else
        {
          j = (int)(1.0D * paramInt1 * localOptions.outWidth / localOptions.outHeight);
          i = paramInt1;
        }
      }
      aa.d("MicroMsg.BitmapUtil", "bitmap decoded size=" + localBitmap2.getWidth() + "x" + localBitmap2.getHeight());
      localObject = Bitmap.createScaledBitmap(localBitmap2, j, i, true);
      if ((localBitmap2 != localObject) && (localObject != null))
        localBitmap2.recycle();
      while (true)
      {
        if (!paramBoolean)
          break label745;
        Bitmap localBitmap3 = Bitmap.createBitmap((Bitmap)localObject, ((Bitmap)localObject).getWidth() - paramInt2 >> 1, ((Bitmap)localObject).getHeight() - paramInt1 >> 1, paramInt2, paramInt1);
        if (localBitmap3 == null)
          break;
        if (localBitmap3 != localObject)
        {
          ((Bitmap)localObject).recycle();
          localObject = localBitmap3;
        }
        aa.d("MicroMsg.BitmapUtil", "bitmap croped size=" + ((Bitmap)localObject).getWidth() + "x" + ((Bitmap)localObject).getHeight());
        return localObject;
        localObject = localBitmap2;
      }
    }
  }

  public static void a(Bitmap paramBitmap, int paramInt, Bitmap.CompressFormat paramCompressFormat, String paramString, boolean paramBoolean)
  {
    if (cj.hX(paramString))
      throw new IOException("saveBitmapToImage pathName null or nil");
    aa.d("MicroMsg.BitmapUtil", "saving to " + paramString);
    File localFile = new File(paramString);
    try
    {
      if (!localFile.exists())
      {
        localFile.getParentFile().mkdirs();
        localFile.createNewFile();
      }
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      paramBitmap.compress(paramCompressFormat, paramInt, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      if (paramBoolean)
        paramBitmap.recycle();
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = localFileNotFoundException.toString();
      aa.c("MicroMsg.BitmapUtil", "FileNotFoundException %s", arrayOfObject3);
      return;
    }
    catch (IOException localIOException)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = localIOException.toString();
      aa.c("MicroMsg.BitmapUtil", "IOException %s", arrayOfObject2);
      return;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localException.toString();
      aa.c("MicroMsg.BitmapUtil", "Exception %s", arrayOfObject1);
    }
  }

  public static void a(BitmapFactory.Options paramOptions)
  {
    if ((Build.VERSION.SDK_INT < 14) && (!gcl));
    try
    {
      BitmapFactory.Options.class.getField("inNativeAlloc").setBoolean(paramOptions, true);
      return;
    }
    catch (Exception localException)
    {
      gcl = true;
    }
  }

  public static void a(String paramString, PInt paramPInt1, PInt paramPInt2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    a(localOptions);
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
    if (localBitmap != null)
      localBitmap.recycle();
    paramPInt1.value = localOptions.outWidth;
    paramPInt2.value = localOptions.outHeight;
  }

  public static boolean a(String paramString1, int paramInt1, int paramInt2, Bitmap.CompressFormat paramCompressFormat, int paramInt3, String paramString2)
  {
    return a(paramString1, paramInt1, paramInt2, paramCompressFormat, paramInt3, paramString2, false);
  }

  public static boolean a(String paramString1, int paramInt1, int paramInt2, Bitmap.CompressFormat paramCompressFormat, int paramInt3, String paramString2, String paramString3)
  {
    return a(paramString1, paramInt1, paramInt2, paramCompressFormat, paramInt3, paramString2 + paramString3, false);
  }

  public static boolean a(String paramString1, int paramInt1, int paramInt2, Bitmap.CompressFormat paramCompressFormat, int paramInt3, String paramString2, boolean paramBoolean)
  {
    return a(paramString1, paramInt1, paramInt2, paramCompressFormat, paramInt3, paramString2, paramBoolean, new PInt(), new PInt());
  }

  public static boolean a(String paramString1, int paramInt1, int paramInt2, Bitmap.CompressFormat paramCompressFormat, int paramInt3, String paramString2, boolean paramBoolean, PInt paramPInt1, PInt paramPInt2)
  {
    Bitmap localBitmap = a(paramString1, paramInt1, paramInt2, false);
    if (localBitmap == null)
      return false;
    if (paramBoolean)
      localBitmap = a(localBitmap, f.hH(paramString1));
    try
    {
      paramPInt1.value = localBitmap.getWidth();
      paramPInt2.value = localBitmap.getHeight();
      a(localBitmap, paramInt3, paramCompressFormat, paramString2, true);
      return true;
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.BitmapUtil", "create thumbnail from orig failed: " + paramString2);
    }
    return false;
  }

  public static boolean a(String paramString1, int paramInt1, Bitmap.CompressFormat paramCompressFormat, int paramInt2, String paramString2)
  {
    Bitmap localBitmap1 = a(paramString1, 0, 0, 0.0F);
    if (localBitmap1 == null)
    {
      aa.e("MicroMsg.BitmapUtil", "rotate: create bitmap fialed");
      return false;
    }
    float f1 = localBitmap1.getWidth();
    float f2 = localBitmap1.getHeight();
    Matrix localMatrix = new Matrix();
    localMatrix.setRotate(paramInt1, f1 / 2.0F, f2 / 2.0F);
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, (int)f1, (int)f2, localMatrix, true);
    if (localBitmap1 != localBitmap2)
      localBitmap1.recycle();
    try
    {
      a(localBitmap2, paramInt2, paramCompressFormat, paramString2, true);
      return true;
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.BitmapUtil", "create thumbnail from orig failed: " + paramString2);
    }
    return false;
  }

  public static boolean a(String paramString1, int paramInt, Bitmap.CompressFormat paramCompressFormat, String paramString2, String paramString3)
  {
    return a(paramString1, paramInt, paramCompressFormat, 90, paramString2 + paramString3);
  }

  public static boolean a(String paramString1, Bitmap.CompressFormat paramCompressFormat, String paramString2, int paramInt)
  {
    return a(paramString1, paramCompressFormat, paramString2, paramInt, 0, new PInt(), new PInt());
  }

  public static boolean a(String paramString1, Bitmap.CompressFormat paramCompressFormat, String paramString2, int paramInt1, int paramInt2, PInt paramPInt1, PInt paramPInt2)
  {
    Bitmap localBitmap2;
    Bitmap localBitmap1;
    if (paramInt1 == 1)
    {
      localBitmap2 = a(paramString1, 50, 2000, true);
      localBitmap1 = Bitmap.createBitmap(localBitmap2, (-100 + localBitmap2.getWidth()) / 2, 0, 100, 50);
    }
    while (true)
    {
      if (localBitmap2 != localBitmap1)
        localBitmap2.recycle();
      if (localBitmap1 != null)
        break;
      return false;
      localBitmap1 = null;
      localBitmap2 = null;
      if (paramInt1 == 2)
      {
        localBitmap2 = a(paramString1, 2000, 50, true);
        localBitmap1 = Bitmap.createBitmap(localBitmap2, 0, (-100 + localBitmap2.getHeight()) / 2, 50, 100);
      }
    }
    if (paramInt2 != 0)
      localBitmap1 = a(localBitmap1, paramInt2);
    try
    {
      paramPInt1.value = localBitmap1.getWidth();
      paramPInt2.value = localBitmap1.getHeight();
      a(localBitmap1, 90, paramCompressFormat, paramString2, true);
      return true;
    }
    catch (IOException localIOException)
    {
      aa.e("MicroMsg.BitmapUtil", "create thumbnail from orig failed: " + paramString2);
    }
    return false;
  }

  public static void ad(View paramView)
  {
    if (paramView == null);
    while (true)
    {
      return;
      try
      {
        paramView.setOnClickListener(null);
      }
      catch (Throwable localThrowable12)
      {
        try
        {
          label10: paramView.setOnCreateContextMenuListener(null);
        }
        catch (Throwable localThrowable12)
        {
          try
          {
            label15: paramView.setOnFocusChangeListener(null);
          }
          catch (Throwable localThrowable12)
          {
            try
            {
              label20: paramView.setOnKeyListener(null);
            }
            catch (Throwable localThrowable12)
            {
              try
              {
                label25: paramView.setOnLongClickListener(null);
              }
              catch (Throwable localThrowable12)
              {
                try
                {
                  label30: paramView.setOnClickListener(null);
                }
                catch (Throwable localThrowable12)
                {
                  try
                  {
                    label35: paramView.setOnTouchListener(null);
                    label40: paramView.destroyDrawingCache();
                    if (paramView.getBackground() != null)
                    {
                      paramView.getBackground().setCallback(null);
                      paramView.setBackgroundDrawable(null);
                    }
                    if ((paramView instanceof ImageView))
                    {
                      ImageView localImageView = (ImageView)paramView;
                      Drawable localDrawable2 = localImageView.getDrawable();
                      if (localDrawable2 != null)
                        localDrawable2.setCallback(null);
                      localImageView.setImageDrawable(null);
                      localImageView.setImageBitmap(null);
                    }
                    if ((paramView instanceof ImageButton))
                    {
                      ImageButton localImageButton = (ImageButton)paramView;
                      Drawable localDrawable1 = localImageButton.getDrawable();
                      if (localDrawable1 != null)
                        localDrawable1.setCallback(null);
                      localImageButton.setImageDrawable(null);
                      localImageButton.setImageBitmap(null);
                    }
                    if ((paramView instanceof ListView))
                    {
                      localListView = (ListView)paramView;
                      if ((paramView instanceof ViewGroup))
                      {
                        int k = ((ViewGroup)paramView).getChildCount();
                        for (int m = 0; m < k; m++)
                          ad(((ViewGroup)paramView).getChildAt(m));
                      }
                    }
                  }
                  catch (Throwable localThrowable12)
                  {
                    try
                    {
                      ListView localListView;
                      ((ViewGroup)paramView).removeAllViews();
                      try
                      {
                        label214: localListView.setAdapter(null);
                      }
                      catch (Throwable localThrowable12)
                      {
                        try
                        {
                          localListView.setOnScrollListener(null);
                        }
                        catch (Throwable localThrowable12)
                        {
                          try
                          {
                            localListView.setOnItemClickListener(null);
                          }
                          catch (Throwable localThrowable12)
                          {
                            try
                            {
                              localListView.setOnItemLongClickListener(null);
                            }
                            catch (Throwable localThrowable12)
                            {
                              try
                              {
                                while (true)
                                {
                                  localListView.setOnItemSelectedListener(null);
                                  label244: paramView.destroyDrawingCache();
                                  if (!(paramView instanceof ViewGroup))
                                    break;
                                  int i = ((ViewGroup)paramView).getChildCount();
                                  for (int j = 0; j < i; j++)
                                    ad(((ViewGroup)paramView).getChildAt(j));
                                  try
                                  {
                                    ((ViewGroup)paramView).removeAllViews();
                                    return;
                                  }
                                  catch (Throwable localThrowable8)
                                  {
                                    return;
                                  }
                                  localThrowable1 = localThrowable1;
                                  break label10;
                                  localThrowable2 = localThrowable2;
                                  break label15;
                                  localThrowable3 = localThrowable3;
                                  break label20;
                                  localThrowable4 = localThrowable4;
                                  break label25;
                                  localThrowable5 = localThrowable5;
                                  break label30;
                                  localThrowable6 = localThrowable6;
                                  break label35;
                                  localThrowable7 = localThrowable7;
                                  break label40;
                                  localThrowable9 = localThrowable9;
                                  continue;
                                  localThrowable10 = localThrowable10;
                                  continue;
                                  localThrowable11 = localThrowable11;
                                  continue;
                                  localThrowable12 = localThrowable12;
                                }
                              }
                              catch (Throwable localThrowable13)
                              {
                                break label244;
                              }
                            }
                          }
                        }
                      }
                    }
                    catch (Throwable localThrowable14)
                    {
                      break label214;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public static Bitmap ae(View paramView)
  {
    if (paramView == null)
      return null;
    Bitmap localBitmap = Bitmap.createBitmap(paramView.getWidth(), paramView.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Drawable localDrawable = paramView.getBackground();
    if (localDrawable != null)
      localDrawable.draw(localCanvas);
    paramView.draw(localCanvas);
    return localBitmap;
  }

  public static Bitmap ayJ()
  {
    Bitmap localBitmap = a(320, 480, Bitmap.Config.ARGB_8888, false);
    new Canvas(localBitmap).drawColor(-16777216);
    return localBitmap;
  }

  public static Bitmap cj(byte[] paramArrayOfByte)
  {
    return decodeByteArray(paramArrayOfByte, 0, 0);
  }

  public static Bitmap createBitmap(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return a(paramInt1, paramInt2, paramConfig, false);
  }

  public static Bitmap decodeByteArray(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (cj.A(paramArrayOfByte))
    {
      aa.w("MicroMsg.BitmapUtil", "error input: data is null");
      return null;
    }
    if ((paramInt1 < 0) || (paramInt2 < 0))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      aa.c("MicroMsg.BitmapUtil", "error input: targetWidth %d, targetHeight %d", arrayOfObject);
      return null;
    }
    return a(0, null, paramArrayOfByte, null, 0.0F, paramInt1, paramInt2);
  }

  public static Bitmap decodeStream(InputStream paramInputStream)
  {
    return a(paramInputStream, 0.0F);
  }

  public static Bitmap e(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof BitmapDrawable))
      return ((BitmapDrawable)paramDrawable).getBitmap();
    Bitmap localBitmap = a(paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888, false);
    Canvas localCanvas = new Canvas(localBitmap);
    paramDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
    paramDrawable.draw(localCanvas);
    return localBitmap;
  }

  public static Bitmap g(Uri paramUri)
  {
    return a(0, null, null, paramUri, 0.0F, 0, 0);
  }

  public static Bitmap h(String paramString, float paramFloat)
  {
    return a(paramString, 0, 0, paramFloat);
  }

  public static byte[] l(Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (paramBitmap.isRecycled()))
      return new byte[0];
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 100, localByteArrayOutputStream);
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    try
    {
      localByteArrayOutputStream.close();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return arrayOfByte;
  }

  public static Bitmap lB(int paramInt)
  {
    return a(paramInt, null, null, null, 0.0F, 0, 0);
  }

  public static byte[] m(Bitmap paramBitmap)
  {
    if ((paramBitmap == null) || (paramBitmap.isRecycled()))
      return new byte[0];
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localByteArrayOutputStream);
    byte[] arrayOfByte = localByteArrayOutputStream.toByteArray();
    try
    {
      localByteArrayOutputStream.close();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
    }
    return arrayOfByte;
  }

  public static BitmapFactory.Options ss(String paramString)
  {
    BitmapFactory.Options localOptions;
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.BitmapUtil", "getImageOptions invalid path");
      localOptions = null;
    }
    while (true)
    {
      return localOptions;
      localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      a(localOptions);
      try
      {
        Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
        if (localBitmap != null)
        {
          localBitmap.recycle();
          return localOptions;
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        aa.e("MicroMsg.BitmapUtil", "decode bitmap failed: " + localOutOfMemoryError.getMessage());
      }
    }
    return localOptions;
  }

  public static int st(String paramString)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions);
    if (localBitmap != null)
      localBitmap.recycle();
    float f1 = localOptions.outWidth / localOptions.outHeight;
    float f2 = localOptions.outHeight / localOptions.outWidth;
    if (f1 >= 2.0F)
      return 1;
    if (f2 >= 2.0F)
      return 2;
    return -1;
  }

  public static Bitmap su(String paramString)
  {
    return a(paramString, 0, 0, 0.0F);
  }

  public static Bitmap w(String paramString, int paramInt1, int paramInt2)
  {
    return a(paramString, paramInt1, paramInt2, 0.0F);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.h
 * JD-Core Version:    0.6.2
 */