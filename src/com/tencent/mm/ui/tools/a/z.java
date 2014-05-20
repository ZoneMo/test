package com.tencent.mm.ui.tools.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.widget.ImageView;

final class z extends Drawable
{
  private static final Paint hqF = new Paint();
  private final float density;
  private final boolean hqB;
  final BitmapDrawable hqG;
  Drawable hqH;
  long hqI;
  boolean hqJ;
  private final s hqc;

  private z(Context paramContext, Drawable paramDrawable, Bitmap paramBitmap, s params, boolean paramBoolean1, boolean paramBoolean2)
  {
    Resources localResources = paramContext.getResources();
    this.hqB = paramBoolean2;
    this.density = localResources.getDisplayMetrics().density;
    this.hqc = params;
    this.hqG = new BitmapDrawable(localResources, paramBitmap);
    if ((params != s.hqr) && (paramBoolean1));
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        this.hqH = paramDrawable;
        this.hqJ = true;
        this.hqI = SystemClock.uptimeMillis();
      }
      return;
    }
  }

  private static Path a(Point paramPoint, int paramInt)
  {
    Point localPoint1 = new Point(paramInt + paramPoint.x, paramPoint.y);
    Point localPoint2 = new Point(paramPoint.x, paramInt + paramPoint.y);
    Path localPath = new Path();
    localPath.moveTo(paramPoint.x, paramPoint.y);
    localPath.lineTo(localPoint1.x, localPoint1.y);
    localPath.lineTo(localPoint2.x, localPoint2.y);
    return localPath;
  }

  static void a(ImageView paramImageView, int paramInt, Drawable paramDrawable)
  {
    if (paramInt != 0)
    {
      paramImageView.setImageResource(paramInt);
      return;
    }
    paramImageView.setImageDrawable(paramDrawable);
  }

  static void a(ImageView paramImageView, Context paramContext, Bitmap paramBitmap, s params, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramImageView.setImageDrawable(new z(paramContext, paramImageView.getDrawable(), paramBitmap, params, paramBoolean1, paramBoolean2));
  }

  public final void draw(Canvas paramCanvas)
  {
    if ((this.hqG == null) || (this.hqG.getBitmap() == null) || (this.hqG.getBitmap().isRecycled()));
    while (true)
    {
      return;
      if (!this.hqJ)
        this.hqG.draw(paramCanvas);
      while (this.hqB)
      {
        hqF.setColor(-1);
        paramCanvas.drawPath(a(new Point(0, 0), (int)(16.0F * this.density)), hqF);
        hqF.setColor(this.hqc.hqu);
        paramCanvas.drawPath(a(new Point(0, 0), (int)(15.0F * this.density)), hqF);
        return;
        float f = (float)(SystemClock.uptimeMillis() - this.hqI) / 200.0F;
        if (f >= 1.0F)
        {
          this.hqJ = false;
          this.hqH = null;
          this.hqG.draw(paramCanvas);
        }
        else
        {
          if (this.hqH != null)
            this.hqH.draw(paramCanvas);
          int i = (int)(f * 255.0F);
          this.hqG.setAlpha(i);
          this.hqG.draw(paramCanvas);
          this.hqG.setAlpha(255);
          invalidateSelf();
        }
      }
    }
  }

  public final int getIntrinsicHeight()
  {
    return this.hqG.getIntrinsicHeight();
  }

  public final int getIntrinsicWidth()
  {
    return this.hqG.getIntrinsicWidth();
  }

  public final int getOpacity()
  {
    return this.hqG.getOpacity();
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.hqG.setBounds(paramRect);
    Drawable localDrawable;
    Rect localRect;
    int i;
    int j;
    int k;
    int m;
    if (this.hqH != null)
    {
      localDrawable = this.hqH;
      localRect = getBounds();
      i = localRect.width();
      j = localRect.height();
      float f = i / j;
      k = localDrawable.getIntrinsicWidth();
      m = localDrawable.getIntrinsicHeight();
      if (k / m < f)
      {
        int i3 = (int)(j / m * k);
        int i4 = localRect.left - (i3 - i) / 2;
        int i5 = i3 + i4;
        localDrawable.setBounds(i4, localRect.top, i5, localRect.bottom);
      }
    }
    else
    {
      return;
    }
    int n = (int)(i / k * m);
    int i1 = localRect.top - (n - j) / 2;
    int i2 = n + i1;
    localDrawable.setBounds(localRect.left, i1, localRect.right, i2);
  }

  public final void setAlpha(int paramInt)
  {
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.z
 * JD-Core Version:    0.6.2
 */