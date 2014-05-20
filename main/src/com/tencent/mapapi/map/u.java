package com.tencent.mapapi.map;

import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

final class u
  implements at
{
  private Drawable UZ = null;
  private as VQ = new as(Bitmap.Config.ARGB_4444);

  public static void b(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    Rect localRect = paramDrawable2.getBounds();
    int i = (int)(0.5F * localRect.height());
    int j = (int)(0.5D * (0.89F * localRect.width()));
    paramDrawable1.setBounds(j + localRect.left, i + localRect.top, j + localRect.right, i + localRect.bottom);
  }

  public final void a(Canvas paramCanvas)
  {
    this.UZ.setColorFilter(2130706432, PorterDuff.Mode.SRC_IN);
    paramCanvas.skew(-0.89F, 0.0F);
    paramCanvas.scale(1.0F, 0.5F);
    this.UZ.draw(paramCanvas);
    this.UZ.clearColorFilter();
  }

  public final Drawable d(Drawable paramDrawable)
  {
    this.UZ = paramDrawable;
    this.VQ.u(this.UZ.getIntrinsicWidth(), this.UZ.getIntrinsicHeight());
    this.VQ.a(this);
    this.UZ = null;
    return new BitmapDrawable(this.VQ.mI());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.u
 * JD-Core Version:    0.6.2
 */