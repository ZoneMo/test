package com.tencent.mapapi.map;

import android.graphics.Point;
import android.graphics.PointF;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bm
  implements k
{
  boolean TW = false;
  public boolean UN = false;
  boolean Uk = false;
  private int VM = 0;
  private MapView Xo;
  private ArrayList Xp;
  private double Xq = 1.0D;
  private final float Xr = 0.6F;
  private final float Xs = 1.2F;
  private float Xt = 0.0F;
  private float Xu = 0.0F;
  GeoPoint Xv = null;
  GeoPoint Xw = null;
  boolean c = true;
  private int k = 0;

  public bm(bh parambh, MapView paramMapView)
  {
    this.Xo = paramMapView;
    this.Xp = new ArrayList();
  }

  private void a(PointF paramPointF)
  {
    this.Xx.WZ.Xy.x = paramPointF.x;
    this.Xx.WZ.Xy.y = paramPointF.y;
    this.Xx.WZ.mB();
  }

  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    paramView.measure(paramInt1, paramInt2);
    label28: int i;
    int j;
    if (paramInt1 == -2)
    {
      paramInt1 = paramView.getMeasuredWidth();
      if (paramInt2 != -2)
        break label100;
      paramInt2 = paramView.getMeasuredHeight();
      i = paramInt5 & 0x7;
      j = paramInt5 & 0x70;
      if (i != 5)
        break label116;
      paramInt3 -= paramInt1;
      label54: if (j != 80)
        break label133;
      paramInt4 -= paramInt2;
    }
    while (true)
    {
      paramView.layout(paramInt3, paramInt4, paramInt3 + paramInt1, paramInt4 + paramInt2);
      return;
      if (paramInt1 != -1)
        break;
      paramInt1 = this.Xo.getMeasuredWidth();
      break;
      label100: if (paramInt2 != -1)
        break label28;
      paramInt2 = this.Xo.getMeasuredHeight();
      break label28;
      label116: if (i != 1)
        break label54;
      paramInt3 -= paramInt1 / 2;
      break label54;
      label133: if (j == 16)
        paramInt4 -= paramInt2 / 2;
    }
  }

  final void F(boolean paramBoolean)
  {
    this.c = paramBoolean;
    if (!paramBoolean)
    {
      this.Xt = 0.0F;
      this.Xu = 0.0F;
    }
  }

  public final void G(boolean paramBoolean)
  {
    Iterator localIterator = this.Xp.iterator();
    while (localIterator.hasNext())
      ((bp)localIterator.next()).G(paramBoolean);
  }

  public final void a(double paramDouble)
  {
    double d1 = paramDouble * this.Xq;
    int i = mV();
    int j = mS();
    int m = mT();
    if (d1 > 1.200000047683716D)
      while ((d1 > 1.200000047683716D) && (i < j))
      {
        d1 /= 2.0D;
        i++;
      }
    if (d1 < 0.6000000238418579D)
      while ((d1 < 0.6000000238418579D) && (i > m))
      {
        d1 *= 2.0D;
        i--;
      }
    int n = i;
    double d2 = d1;
    if ((n == j) && (d2 > 1.0D))
      d2 = 1.0D;
    if ((n == m) && (d2 < 1.0D))
      d2 = 1.0D;
    this.Xq = d2;
    if (n != mV())
    {
      bb(n);
      return;
    }
    this.Xo.invalidate();
    this.Xx.Xa.mu();
  }

  final void a(GeoPoint paramGeoPoint1, GeoPoint paramGeoPoint2, boolean paramBoolean)
  {
    if ((paramGeoPoint1 == null) || (paramGeoPoint2 == null));
    int i1;
    int i2;
    do
    {
      int n;
      do
      {
        return;
        if ((this.k == 0) || (this.k == 0))
        {
          this.Xv = paramGeoPoint1;
          this.Xw = paramGeoPoint2;
          return;
        }
        int i = this.Xx.WW.mS();
        PointF localPointF1 = this.Xx.WZ.a(paramGeoPoint1, i);
        PointF localPointF2 = this.Xx.WZ.a(paramGeoPoint2, i);
        float f1 = localPointF2.x - localPointF1.x;
        if (f1 < 0.0F)
          f1 = Math.abs(f1);
        float f2 = localPointF2.y - localPointF1.y;
        if (f2 < 0.0F)
          f2 = Math.abs(f2);
        float f3 = (float)this.Xq;
        float f4 = f1 * f3;
        float f5 = f2 * f3;
        int j = this.VM;
        int m = this.k;
        n = (int)Math.ceil(Math.max(Math.log(f4 / j) / Math.log(2.0D), Math.log(f5 / m) / Math.log(2.0D)));
      }
      while (n == 0);
      if (paramBoolean == true)
      {
        GeoPoint localGeoPoint = new GeoPoint((paramGeoPoint1.getLatitudeE6() + paramGeoPoint2.getLatitudeE6()) / 2, (paramGeoPoint1.getLongitudeE6() + paramGeoPoint2.getLongitudeE6()) / 2);
        this.Xo.mo().b(localGeoPoint);
      }
      i1 = mS() - n;
      i2 = mV();
    }
    while (i2 == i1);
    if (i1 > i2)
    {
      int i4 = i1 - i2;
      this.Xo.Vq.bk(i4);
      return;
    }
    int i3 = i2 - i1;
    this.Xo.Vq.bl(i3);
  }

  public final void a(bp parambp)
  {
    this.Xp.add(parambp);
  }

  public final void b(bp parambp)
  {
    this.Xp.remove(parambp);
  }

  public final void bb(int paramInt)
  {
    if (paramInt != this.Xx.WZ.Um)
    {
      if (paramInt > this.Xx.WZ.Um)
        F(false);
      this.Xx.WZ.mO();
      this.Xx.WZ.Um = paramInt;
      this.Xx.WZ.md();
      this.Xo.ms();
      this.Xo.c(true, true);
      int i = this.Xx.WX.Ua.size();
      for (int j = 0; j < i; j++)
      {
        ba localba = (ba)this.Xx.WX.Ua.get(j);
        if (localba != null)
          localba.mF();
      }
    }
    G(false);
  }

  public final void f(GeoPoint paramGeoPoint)
  {
    if (paramGeoPoint == null)
      return;
    F(true);
    a(this.Xx.WZ.a(paramGeoPoint, this.Xx.WZ.Um));
    G(false);
  }

  public final void g(GeoPoint paramGeoPoint)
  {
    if (paramGeoPoint == null)
      return;
    a(this.Xx.WZ.a(paramGeoPoint, this.Xx.WZ.Um));
    G(false);
  }

  public final void h(GeoPoint paramGeoPoint)
  {
    GeoPoint localGeoPoint = this.Xx.WW.mW();
    if ((paramGeoPoint != null) && (!paramGeoPoint.equals(localGeoPoint)))
    {
      a(this.Xx.WZ.a(paramGeoPoint, this.Xx.WZ.Um));
      G(true);
    }
  }

  final void lX()
  {
    this.Xq = 1.0D;
  }

  final void m(float paramFloat1, float paramFloat2)
  {
    if (this.c == true);
    do
    {
      return;
      this.Xt = (paramFloat1 + this.Xt);
      this.Xu = (paramFloat2 + this.Xu);
      if (Math.abs((int)this.Xt) >= this.VM)
      {
        this.c = true;
        return;
      }
    }
    while (Math.abs((int)this.Xu) < this.k);
    this.c = true;
  }

  public final int mE()
  {
    return this.k;
  }

  public final float mR()
  {
    return (float)this.Xq;
  }

  public final int mS()
  {
    return this.Xx.WZ.Ud;
  }

  public final int mT()
  {
    return this.Xx.WZ.Uc;
  }

  public final int mU()
  {
    return this.VM;
  }

  public final int mV()
  {
    return this.Xx.WZ.Um;
  }

  public final GeoPoint mW()
  {
    return this.Xx.WZ.b(this.Xx.WZ.Xy, this.Xx.WZ.Um);
  }

  public final MapView mX()
  {
    return this.Xo;
  }

  public final void mu()
  {
    if (this.Xo != null)
    {
      int i = this.Xo.getChildCount();
      int j = 0;
      if (j < i)
      {
        View localView = this.Xo.getChildAt(j);
        MapView.LayoutParams localLayoutParams;
        if ((localView != null) && ((localView.getLayoutParams() instanceof MapView.LayoutParams)))
        {
          localLayoutParams = (MapView.LayoutParams)localView.getLayoutParams();
          if (localLayoutParams.mode != 0)
            break label156;
          if (localLayoutParams.VA != null)
          {
            Point localPoint = this.Xx.WV.a(localLayoutParams.VA, null);
            localPoint.x += localLayoutParams.x;
            localPoint.y += localLayoutParams.y;
            a(localView, localLayoutParams.width, localLayoutParams.height, localPoint.x, localPoint.y, localLayoutParams.alignment);
          }
        }
        while (true)
        {
          j++;
          break;
          label156: a(localView, localLayoutParams.width, localLayoutParams.height, localLayoutParams.x, localLayoutParams.y, localLayoutParams.alignment);
        }
      }
      this.Xx.WW.Xo.me();
    }
  }

  public final void u(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != this.VM) || (paramInt2 != this.k))
    {
      this.VM = paramInt1;
      this.k = paramInt2;
      G(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bm
 * JD-Core Version:    0.6.2
 */