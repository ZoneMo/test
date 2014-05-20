package com.tencent.mapapi.map;

import android.graphics.PointF;

public final class f
{
  private bh Vl;

  f(bh parambh)
  {
    this.Vl = parambh;
  }

  public final void a(GeoPoint paramGeoPoint)
  {
    if (paramGeoPoint == null);
    while ((this.Vl == null) || (this.Vl.WZ == null))
      return;
    this.Vl.WW.f(paramGeoPoint);
  }

  public final void b(GeoPoint paramGeoPoint)
  {
    this.Vl.WW.mX().Vq.e(paramGeoPoint);
  }

  public final void l(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 == 0.0F) && (paramFloat2 == 0.0F))
      return;
    this.Vl.WW.m(paramFloat1, paramFloat2);
    bo localbo = this.Vl.WZ;
    float f1 = -paramFloat1;
    float f2 = -paramFloat2;
    PointF localPointF1 = localbo.Xy;
    localPointF1.x -= f1;
    PointF localPointF2 = localbo.Xy;
    localPointF2.y = (f2 + localPointF2.y);
    localbo.mB();
    this.Vl.WW.G(false);
  }

  public final int setZoom(int paramInt)
  {
    bh localbh = this.Vl;
    if (paramInt < localbh.WW.mT())
      paramInt = localbh.WW.mT();
    if (paramInt > localbh.WW.mS())
      paramInt = localbh.WW.mS();
    this.Vl.WW.lX();
    this.Vl.WW.bb(paramInt);
    this.Vl.WW.F(true);
    return paramInt;
  }

  public final void zoomToSpan(int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0));
    GeoPoint localGeoPoint1;
    do
    {
      return;
      localGeoPoint1 = this.Vl.WW.mW();
    }
    while (localGeoPoint1 == null);
    int i = paramInt1 / 2;
    int j = paramInt2 / 2;
    GeoPoint localGeoPoint2 = new GeoPoint(localGeoPoint1.getLatitudeE6() - i, j + localGeoPoint1.getLongitudeE6());
    GeoPoint localGeoPoint3 = new GeoPoint(i + localGeoPoint1.getLatitudeE6(), localGeoPoint1.getLongitudeE6() - j);
    this.Vl.WW.a(localGeoPoint2, localGeoPoint3, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.f
 * JD-Core Version:    0.6.2
 */