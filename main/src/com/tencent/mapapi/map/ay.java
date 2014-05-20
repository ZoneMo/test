package com.tencent.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;

abstract class ay extends az
{
  protected bh Vl;
  protected Bitmap WE;

  public ay(bh parambh, Bitmap paramBitmap)
  {
    this.Vl = parambh;
    this.WE = paramBitmap;
  }

  private Rect mM()
  {
    Point localPoint = mL();
    if (this.WE == null)
      return null;
    return new Rect(localPoint.x, localPoint.y, localPoint.x + this.WE.getWidth(), localPoint.y + this.WE.getHeight());
  }

  public final boolean a(Canvas paramCanvas, MapView paramMapView, boolean paramBoolean, long paramLong)
  {
    if (this.WE == null)
      return false;
    paramCanvas.drawBitmap(this.WE, mM().left, mM().top, null);
    return true;
  }

  protected abstract Point mL();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.ay
 * JD-Core Version:    0.6.2
 */