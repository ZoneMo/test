package com.tencent.mapapi.map;

import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;

public abstract class b extends m
{
  private static int Ud = -1;
  private boolean TW = true;
  private Drawable UZ;
  private int Uo = -1;
  private Drawable Va;
  private e Vb = null;
  private c Vc = null;
  private OverlayItem Vd;
  private int g = -1;
  private boolean j = false;

  public b(Drawable paramDrawable)
  {
    this.UZ = paramDrawable;
    if (this.UZ == null)
      this.UZ = new BitmapDrawable(bq.WE);
    int i = this.UZ.getIntrinsicWidth();
    int k = this.UZ.getIntrinsicHeight();
    this.UZ.setBounds(0, 0, i, k);
    this.Va = new u().d(this.UZ);
    if (1 == Ud)
    {
      boundCenterBottom(this.UZ);
      return;
    }
    if (2 == Ud)
    {
      boundCenter(this.UZ);
      return;
    }
    boundCenterBottom(this.UZ);
  }

  private static Drawable a(Drawable paramDrawable, d paramd)
  {
    if ((paramDrawable == null) || (d.Ve == paramd))
      return null;
    paramDrawable.setBounds(0, 0, paramDrawable.getIntrinsicWidth(), paramDrawable.getIntrinsicHeight());
    Rect localRect = paramDrawable.getBounds();
    int i = localRect.width() / 2;
    int k = -localRect.height();
    d locald = d.Vf;
    int m = 0;
    if (paramd == locald)
    {
      k /= 2;
      m = -k;
    }
    paramDrawable.setBounds(-i, k, i, m);
    return paramDrawable;
  }

  private void a(Canvas paramCanvas, MapView paramMapView, boolean paramBoolean, OverlayItem paramOverlayItem, int paramInt)
  {
    Drawable localDrawable1 = paramOverlayItem.getMarker(paramInt);
    if ((localDrawable1 == null) || (localDrawable1.equals(this.UZ)));
    for (int i = 1; ; i = 0)
    {
      Drawable localDrawable2;
      if (i != 0)
        if (paramBoolean)
        {
          localDrawable2 = this.Va;
          this.Va.setBounds(this.UZ.copyBounds());
          u.b(this.Va, this.UZ);
        }
      while (true)
      {
        Point localPoint = paramMapView.mp().a(paramOverlayItem.my(), null);
        int k = localPoint.x;
        int m = localPoint.y;
        Rect localRect = localDrawable2.getBounds();
        localDrawable2.setBounds(k + localRect.left, m + localRect.top, k + localRect.right, m + localRect.bottom);
        localDrawable2.draw(paramCanvas);
        localDrawable2.setBounds(localRect.left - k, localRect.top - m, localRect.right - k, localRect.bottom - m);
        return;
        localDrawable2 = this.UZ;
        continue;
        localDrawable1.setBounds(0, 0, localDrawable1.getIntrinsicWidth(), localDrawable1.getIntrinsicHeight());
        boundCenterBottom(localDrawable1);
        if (paramBoolean)
        {
          localDrawable2 = this.Va;
          this.Va.setBounds(localDrawable1.copyBounds());
          u.b(this.Va, localDrawable1);
        }
        else
        {
          localDrawable2 = localDrawable1;
        }
      }
    }
  }

  protected static boolean a(Drawable paramDrawable, int paramInt1, int paramInt2)
  {
    return paramDrawable.getBounds().contains(paramInt1, paramInt2);
  }

  private OverlayItem bg(int paramInt)
  {
    return this.Vb.bh(paramInt);
  }

  public static Drawable boundCenter(Drawable paramDrawable)
  {
    Ud = 2;
    return a(paramDrawable, d.Vf);
  }

  private static Drawable boundCenterBottom(Drawable paramDrawable)
  {
    Ud = 1;
    return a(paramDrawable, d.Vg);
  }

  public void a(Canvas paramCanvas, MapView paramMapView, boolean paramBoolean)
  {
    for (int i = 0; i < this.Vb.ml(); i++)
    {
      int m = this.Vb.bi(i);
      if (m != this.Uo)
        a(paramCanvas, paramMapView, paramBoolean, bg(m), 0);
    }
    int k = this.Uo;
    OverlayItem localOverlayItem = null;
    if (k != -1)
      localOverlayItem = this.Vb.bh(this.Uo);
    if ((this.TW) && (localOverlayItem != null))
    {
      if (mv() == true)
        a(paramCanvas, paramMapView, true, localOverlayItem, 4);
      a(paramCanvas, paramMapView, false, localOverlayItem, 4);
    }
  }

  public final void a(OverlayItem paramOverlayItem)
  {
    if ((paramOverlayItem != null) && (this.Uo == this.Vb.b(paramOverlayItem)));
    do
    {
      do
      {
        return;
        if ((paramOverlayItem == null) && (this.Uo != -1))
        {
          if (this.Vc != null);
          this.Uo = -1;
          return;
        }
        this.Uo = this.Vb.b(paramOverlayItem);
      }
      while (this.Uo == -1);
      this.g = this.Uo;
    }
    while (this.Vc == null);
  }

  public final boolean a(MotionEvent paramMotionEvent, MapView paramMapView)
  {
    if ((!this.j) || (this.Vd == null) || (!this.Vd.mw()))
      return false;
    switch (paramMotionEvent.getAction())
    {
    case 0:
    default:
      return false;
    case 1:
    case 3:
    case 4:
      this.j = false;
      this.Vd = null;
      return true;
    case 2:
    }
    int i = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    GeoPoint localGeoPoint = paramMapView.mp().s(i, k);
    this.Vd.c(localGeoPoint);
    paramMapView.invalidate();
    return true;
  }

  public final boolean a(GeoPoint paramGeoPoint, MapView paramMapView)
  {
    return this.Vb.d(paramGeoPoint, paramMapView);
  }

  public final boolean b(GeoPoint paramGeoPoint, MapView paramMapView)
  {
    this.Vb.c(paramGeoPoint, paramMapView);
    this.j = true;
    return false;
  }

  protected abstract OverlayItem bf(int paramInt);

  protected final boolean onTap(int paramInt)
  {
    if (paramInt != this.Uo)
      a(bg(paramInt));
    return false;
  }

  protected final void populate()
  {
    this.Vb = new e(this);
    this.g = -1;
    this.Uo = -1;
  }

  public abstract int size();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.b
 * JD-Core Version:    0.6.2
 */