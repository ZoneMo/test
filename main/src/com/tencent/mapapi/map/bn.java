package com.tencent.mapapi.map;

import android.graphics.Point;
import android.graphics.PointF;

final class bn
  implements o
{
  bn(bh parambh)
  {
  }

  public final Point a(GeoPoint paramGeoPoint, Point paramPoint)
  {
    int i = this.Vl.WW.mV();
    PointF localPointF = this.Vl.WZ.b(paramGeoPoint, i);
    Point localPoint1 = this.Vl.WZ.mY();
    float f1 = this.Vl.WW.mR();
    float f2 = f1 * (localPointF.x - localPoint1.x) + localPoint1.x;
    float f3 = f1 * (localPointF.y - localPoint1.y) + localPoint1.y;
    Point localPoint2 = new Point(Math.round(f2), Math.round(f3));
    if (paramPoint != null)
    {
      paramPoint.x = localPoint2.x;
      paramPoint.y = localPoint2.y;
    }
    return localPoint2;
  }

  public final float metersToEquatorPixels(float paramFloat)
  {
    return paramFloat * this.Vl.WW.mR() * this.Vl.WZ.XB[(this.Vl.WW.mV() - this.Vl.WW.mT())];
  }

  public final GeoPoint s(int paramInt1, int paramInt2)
  {
    Point localPoint = this.Vl.WZ.mY();
    float f = this.Vl.WW.mR();
    PointF localPointF = new PointF((paramInt1 - localPoint.x) / f + localPoint.x, (paramInt2 - localPoint.y) / f + localPoint.y);
    return this.Vl.WZ.a(localPointF, this.Vl.WZ.Um);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bn
 * JD-Core Version:    0.6.2
 */