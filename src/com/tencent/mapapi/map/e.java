package com.tencent.mapapi.map;

import android.graphics.Point;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

final class e
  implements Comparator
{
  private ArrayList Vi;
  private ArrayList Vj;

  public e(b paramb)
  {
    if (this.Vi != null)
    {
      this.Vi.clear();
      this.Vi = null;
    }
    if (this.Vj != null)
    {
      this.Vj.clear();
      this.Vj = null;
    }
    int i = paramb.size();
    this.Vi = new ArrayList(i);
    this.Vj = new ArrayList(i);
    for (int j = 0; j < i; j++)
    {
      this.Vj.add(Integer.valueOf(j));
      OverlayItem localOverlayItem = paramb.bf(j);
      this.Vi.add(localOverlayItem);
    }
    Collections.sort(this.Vj, this);
  }

  private static Point a(OverlayItem paramOverlayItem, o paramo, Point paramPoint)
  {
    Point localPoint = paramo.a(paramOverlayItem.my(), null);
    return new Point(paramPoint.x - localPoint.x, paramPoint.y - localPoint.y);
  }

  private int e(GeoPoint paramGeoPoint, MapView paramMapView)
  {
    o localo = paramMapView.mp();
    Point localPoint1 = localo.a(paramGeoPoint, null);
    int i = -1;
    double d1 = 1.7976931348623157E+308D;
    int j = 2147483647;
    int k = this.Vi.size();
    int m = 0;
    Point localPoint3;
    if (m < k)
    {
      OverlayItem localOverlayItem = (OverlayItem)this.Vi.get(m);
      if (localOverlayItem == null)
        break label237;
      Point localPoint2 = a(localOverlayItem, localo, localPoint1);
      Drawable localDrawable = localOverlayItem.mx();
      if (localDrawable == null)
        localDrawable = b.a(this.Vk);
      if (!b.a(localDrawable, localPoint2.x, localPoint2.y))
        break label252;
      localPoint3 = a(localOverlayItem, localo, localPoint1);
    }
    label237: label252: for (double d2 = localPoint3.x * localPoint3.x + localPoint3.y * localPoint3.y; ; d2 = -1.0D)
    {
      int n;
      int i1;
      if ((d2 >= 0.0D) && (d2 < d1))
      {
        n = bi(m);
        i1 = m;
      }
      while (true)
      {
        m++;
        j = n;
        i = i1;
        d1 = d2;
        break;
        if ((d2 == d1) && (bi(m) > j))
        {
          d2 = d1;
          n = j;
          i1 = m;
          continue;
          return i;
        }
        else
        {
          d2 = d1;
          n = j;
          i1 = i;
        }
      }
    }
  }

  public final int b(OverlayItem paramOverlayItem)
  {
    if (paramOverlayItem != null)
      for (int i = 0; i < this.Vi.size(); i++)
        if (paramOverlayItem.equals(this.Vi.get(i)))
          return i;
    return -1;
  }

  public final OverlayItem bh(int paramInt)
  {
    return (OverlayItem)this.Vi.get(paramInt);
  }

  public final int bi(int paramInt)
  {
    return ((Integer)this.Vj.get(paramInt)).intValue();
  }

  public final boolean c(GeoPoint paramGeoPoint, MapView paramMapView)
  {
    int i = e(paramGeoPoint, paramMapView);
    if (i != -1)
      b.a(this.Vk, (OverlayItem)this.Vi.get(i));
    return false;
  }

  public final boolean d(GeoPoint paramGeoPoint, MapView paramMapView)
  {
    int i = e(paramGeoPoint, paramMapView);
    if (i >= 0)
      this.Vk.onTap(i);
    while (true)
    {
      paramMapView.mm().WX.mB();
      return false;
      this.Vk.a(null);
    }
  }

  public final int ml()
  {
    return this.Vi.size();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.e
 * JD-Core Version:    0.6.2
 */