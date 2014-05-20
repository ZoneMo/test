package com.tencent.mapapi.map;

import android.graphics.Point;
import android.graphics.PointF;
import java.util.ArrayList;

final class bo
{
  public int Uc = 2;
  public int Ud = 20;
  public int Um = 10;
  bm WW = null;
  private GeoPoint XA = new GeoPoint(39908716, 116397529);
  float[] XB = null;
  double[] XC = null;
  double[] XD = null;
  double[] XE = null;
  public PointF Xy;
  private Point Xz = null;

  public bo(bm parambm)
  {
    this.WW = parambm;
  }

  private void kY()
  {
    this.Xy = a(this.XA, this.Um);
  }

  private static int v(int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0)
      paramInt2 += paramInt1;
    while (paramInt2 < paramInt1)
      return paramInt2;
    return paramInt2 - paramInt1;
  }

  final PointF a(GeoPoint paramGeoPoint, int paramInt)
  {
    double d1 = Math.min(Math.max(Math.sin(0.0174532925199433D * (paramGeoPoint.getLatitudeE6() / 1000000.0D)), -0.9999D), 0.9999D);
    double d2 = this.XC[(paramInt - this.Uc)] + paramGeoPoint.getLongitudeE6() / 1000000.0D * this.XD[(paramInt - this.Uc)];
    double d3 = this.XC[(paramInt - this.Uc)] + 0.5D * (Math.log((1.0D + d1) / (1.0D - d1)) * this.XE[(paramInt - this.Uc)]);
    return new PointF((float)d2, (float)d3);
  }

  public final GeoPoint a(PointF paramPointF, int paramInt)
  {
    return b(new PointF(this.Xy.x + (paramPointF.x - this.Xz.x), this.Xy.y - (paramPointF.y - this.Xz.y)), paramInt);
  }

  public final ArrayList a(int paramInt1, int paramInt2, int paramInt3, float paramFloat)
  {
    int i = (int)Math.floor(this.Xy.x / 256.0F);
    int j = (int)Math.floor(this.Xy.y / 256.0F);
    float f1 = this.Xz.x - this.Xy.x % 256.0F;
    float f2 = this.Xz.y - (256.0F - this.Xy.y % 256.0F);
    double d1 = paramInt2 * (1.0D / paramFloat - 1.0D) / 2.0D;
    double d2 = d1 + f1;
    if (d2 < 0.0D);
    for (double d3 = 0.0D; ; d3 = d2)
    {
      double d4 = d1 + (1.0F * paramInt2 - f1 - 256.0F);
      if (d4 < 0.0D);
      for (double d5 = 0.0D; ; d5 = d4)
      {
        double d6 = paramInt3 * (1.0D / paramFloat - 1.0D) / 2.0D;
        double d7 = d6 + f2;
        if (d7 < 0.0D);
        for (double d8 = 0.0D; ; d8 = d7)
        {
          double d9 = d6 + (1.0F * paramInt3 - f2 - 256.0F);
          if (d9 < 0.0D)
            d9 = 0.0D;
          int k = (int)Math.ceil(d3 / 256.0D);
          int m = (int)Math.ceil(d5 / 256.0D);
          int n = (int)Math.ceil(d8 / 256.0D);
          int i1 = (int)Math.ceil(d9 / 256.0D);
          ArrayList localArrayList = new ArrayList();
          int i2 = (int)Math.pow(2.0D, paramInt1 + 1);
          for (int i3 = -k; i3 <= m; i3++)
            for (int i4 = -i1; i4 <= n; i4++)
            {
              ab localab = new ab(v(i2, i + i3), v(i2, j + i4), paramInt1);
              localab.VZ = (f1 + i3 * 256);
              localab.Wa = (f2 - i4 * 256);
              localArrayList.add(localab);
            }
          return localArrayList;
        }
      }
    }
  }

  public final void a(Point paramPoint)
  {
    if (this.Xz == null)
      this.Xz = new Point();
    this.Xz.x = paramPoint.x;
    this.Xz.y = paramPoint.y;
  }

  public final PointF b(GeoPoint paramGeoPoint, int paramInt)
  {
    PointF localPointF = a(paramGeoPoint, paramInt);
    return new PointF(this.Xz.x + (localPointF.x - this.Xy.x), this.Xz.y - (localPointF.y - this.Xy.y));
  }

  final GeoPoint b(PointF paramPointF, int paramInt)
  {
    double d = (paramPointF.x - this.XC[(paramInt - this.Uc)]) / this.XD[(paramInt - this.Uc)];
    return new GeoPoint((int)(1000000.0D * (180.0D * Math.asin(1.0D - 2.0D / (1.0D + Math.pow(2.718281828459045D, (paramPointF.y - this.XC[(paramInt - this.Uc)]) / 0.5D / this.XE[(paramInt - this.Uc)]))) / 3.141592653589793D)), (int)(d * 1000000.0D));
  }

  public final ArrayList h(int paramInt1, int paramInt2, int paramInt3)
  {
    PointF localPointF = a(this.XA, paramInt1);
    int i = (int)Math.floor(localPointF.x / 256.0F);
    int j = (int)Math.floor(localPointF.y / 256.0F);
    float f1 = this.Xz.x - localPointF.x % 256.0F;
    float f2 = this.Xz.y - (256.0F - localPointF.y % 256.0F);
    int k = (int)Math.ceil(f1 / 256.0F);
    int m = (int)Math.ceil((1.0F * paramInt2 - f1 - 256.0F) / 256.0F);
    int n = (int)Math.ceil(f2 / 256.0F);
    int i1 = (int)Math.ceil((1.0F * paramInt3 - f2 - 256.0F) / 256.0F);
    ArrayList localArrayList = new ArrayList();
    int i2 = (int)Math.pow(2.0D, paramInt1 + 1);
    for (int i3 = -k; i3 <= m; i3++)
      for (int i4 = -i1; i4 <= n; i4++)
      {
        ac localac = new ac(v(i2, i + i3), v(i2, j + i4), paramInt1);
        localac.VZ = (f1 + i3 * 256);
        localac.Wa = (f2 - i4 * 256);
        localArrayList.add(localac);
      }
    return localArrayList;
  }

  public final void lX()
  {
    this.Xz = new Point(this.WW.mU() / 2, this.WW.mE() / 2);
    this.XB = new float[1 + (this.Ud - this.Uc)];
    this.XC = new double[1 + (this.Ud - this.Uc)];
    this.XD = new double[1 + (this.Ud - this.Uc)];
    this.XE = new double[1 + (this.Ud - this.Uc)];
    for (int i = this.Uc; i <= this.Ud; i++)
    {
      double d = 256.0D * Math.pow(2.0D, i + 1);
      this.XB[(i - this.Uc)] = ((float)(d / 40075700.0D));
      this.XC[(i - this.Uc)] = (d / 2.0D);
      this.XD[(i - this.Uc)] = (d / 360.0D);
      this.XE[(i - this.Uc)] = (d / 6.283185307179586D);
    }
    kY();
  }

  public final void mB()
  {
    int i = 2 * (int)this.XC[(this.Um - this.Uc)];
    if (this.Xy.x < 0.0F)
    {
      PointF localPointF4 = this.Xy;
      localPointF4.x += i;
    }
    do
      while (this.Xy.y < 0.0F)
      {
        PointF localPointF3 = this.Xy;
        localPointF3.y += i;
        return;
        if (this.Xy.x > i)
        {
          PointF localPointF1 = this.Xy;
          localPointF1.x -= i;
        }
      }
    while (this.Xy.y <= i);
    PointF localPointF2 = this.Xy;
    localPointF2.y -= i;
  }

  public final void mO()
  {
    this.XA = b(this.Xy, this.Um);
  }

  public final Point mY()
  {
    return new Point(this.Xz.x, this.Xz.y);
  }

  final GeoPoint mZ()
  {
    return this.XA;
  }

  public final void md()
  {
    kY();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bo
 * JD-Core Version:    0.6.2
 */