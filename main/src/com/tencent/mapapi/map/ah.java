package com.tencent.mapapi.map;

import android.graphics.Point;
import android.os.Handler;
import java.util.ArrayList;
import java.util.List;

final class ah
{
  private Handler UP = null;
  private List Ub = null;
  private final int Ud = 16;
  private final int Um = 10;
  private final int Un = 15;
  private bh Wm = null;

  public ah()
  {
    if (this.UP == null)
      this.UP = new Handler();
    if (this.Ub == null)
      this.Ub = new ArrayList();
  }

  private void bj(int paramInt)
  {
    int i = 0;
    double[] arrayOfDouble = new double[16];
    double d1 = Math.pow(2.0D, paramInt);
    int j = 1;
    while (j < 16)
    {
      double d2 = bq.a(d1, j * 10);
      double d3 = d1 / d2;
      arrayOfDouble[(16 - j)] = d3;
      j++;
      d1 = d2;
    }
    arrayOfDouble[0] = d1;
    while (i < 16)
    {
      aj localaj = new aj(this);
      aj.a(localaj, arrayOfDouble[i]);
      this.Ub.add(localaj);
      i++;
    }
  }

  public final void F(boolean paramBoolean)
  {
    if (this.Ub == null);
    ag localag;
    do
    {
      return;
      if (this.Ub.size() <= 0)
      {
        this.Wm.WW.G(false);
        return;
      }
      localag = (ag)this.Ub.remove(0);
    }
    while (localag == null);
    if (paramBoolean == true)
    {
      this.UP.post(localag);
      return;
    }
    this.UP.postDelayed(localag, 10L);
  }

  public final void a(bh parambh)
  {
    this.Wm = parambh;
  }

  public final boolean bk(int paramInt)
  {
    if (this.Ub == null);
    int i;
    do
    {
      return false;
      i = this.Wm.WW.mV();
    }
    while (this.Wm.WW.mS() == i);
    bj(paramInt);
    F(true);
    return true;
  }

  public final boolean bl(int paramInt)
  {
    int i = 0;
    if (this.Ub == null);
    int j;
    do
    {
      return false;
      j = this.Wm.WW.mV();
    }
    while (this.Wm.WW.mT() == j);
    double[] arrayOfDouble = new double[16];
    double d1 = Math.pow(0.5D, paramInt);
    int k = 1;
    while (k < 16)
    {
      double d2 = bq.a(d1, k * 10);
      double d3 = d1 / d2;
      arrayOfDouble[(16 - k)] = d3;
      k++;
      d1 = d2;
    }
    arrayOfDouble[0] = d1;
    while (i < 16)
    {
      aj localaj = new aj(this);
      aj.a(localaj, arrayOfDouble[i]);
      this.Ub.add(localaj);
      i++;
    }
    F(true);
    return true;
  }

  public final void e(GeoPoint paramGeoPoint)
  {
    if (this.Ub == null);
    while (paramGeoPoint == null)
      return;
    if (this.Ub.size() > 0)
      this.Ub.clear();
    this.UP.removeCallbacksAndMessages(null);
    GeoPoint localGeoPoint = this.Wm.WW.mW();
    Point localPoint1 = this.Wm.WW.mX().mp().a(paramGeoPoint, null);
    Point localPoint2 = this.Wm.WZ.mY();
    int i = localPoint1.x - localPoint2.x;
    int j = localPoint1.y - localPoint2.y;
    int k = Math.abs(i);
    int m = Math.abs(j);
    if (k > m);
    for (float f1 = k; ; f1 = m)
    {
      int n = (int)Math.ceil(f1 / 15.0F);
      if (n > 16)
        n = 16;
      float f2 = paramGeoPoint.getLatitudeE6() - localGeoPoint.getLatitudeE6();
      float f3 = paramGeoPoint.getLongitudeE6() - localGeoPoint.getLongitudeE6();
      int i1 = Math.round(f2 / n);
      int i2 = Math.round(f3 / n);
      for (int i3 = 1; i3 < n; i3++)
      {
        int i4 = localGeoPoint.getLatitudeE6() + i1 * i3;
        int i5 = localGeoPoint.getLongitudeE6() + i2 * i3;
        ai localai2 = new ai(this);
        localai2.u(i4, i5);
        this.Ub.add(localai2);
      }
    }
    ai localai1 = new ai(this);
    localai1.u(paramGeoPoint.getLatitudeE6(), paramGeoPoint.getLongitudeE6());
    this.Ub.add(localai1);
    F(true);
  }

  public final void md()
  {
    if (this.Ub != null)
    {
      this.UP.removeCallbacksAndMessages(null);
      int i = this.Ub.size();
      for (int j = 0; j < i; j++)
      {
        ag localag = (ag)this.Ub.remove(0);
        if (localag != null)
          localag.md();
      }
    }
    this.Ub = null;
    this.UP = null;
    this.Wm = null;
  }

  public final boolean t(int paramInt1, int paramInt2)
  {
    if (this.Ub == null);
    int i;
    do
    {
      return false;
      i = this.Wm.WW.mV();
    }
    while (this.Wm.WW.mS() == i);
    ak localak1 = new ak(this);
    localak1.u(paramInt1, paramInt2);
    this.Ub.add(localak1);
    bj(1);
    int j = this.Wm.WW.mU() / 2;
    int k = this.Wm.WW.mE() / 2;
    ak localak2 = new ak(this);
    localak2.u(j, k);
    this.Ub.add(localak2);
    F(true);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.ah
 * JD-Core Version:    0.6.2
 */