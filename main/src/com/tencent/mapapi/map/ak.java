package com.tencent.mapapi.map;

import android.graphics.Point;

final class ak extends aj
{
  private int Uc = 0;
  private int b = 0;

  public ak(ah paramah)
  {
    super(paramah);
  }

  final void lX()
  {
    Point localPoint = new Point(this.b, this.Uc);
    GeoPoint localGeoPoint = ah.a(this.Wo).WW.mX().mp().s(this.b, this.Uc);
    ah.a(this.Wo).WZ.a(localPoint);
    ah.a(this.Wo).WW.g(localGeoPoint);
    this.Wo.F(false);
    md();
  }

  public final void u(int paramInt1, int paramInt2)
  {
    this.b = paramInt1;
    this.Uc = paramInt2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.ak
 * JD-Core Version:    0.6.2
 */