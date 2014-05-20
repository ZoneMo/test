package com.tencent.mapapi.map;

import android.content.Context;
import android.graphics.Canvas;
import android.view.GestureDetector;
import android.view.GestureDetector.OnDoubleTapListener;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Scroller;
import java.util.List;

final class l extends View
  implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener
{
  boolean TW = false;
  private int Um = 0;
  private int Un = 0;
  private GestureDetector VB = new GestureDetector(paramContext, this);
  private Scroller VC;
  private bt VD = null;

  public l(MapView paramMapView, Context paramContext)
  {
    super(paramContext);
    this.VC = new Scroller(paramContext);
  }

  public final boolean h(MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 5:
    }
    while (true)
    {
      boolean bool1 = MapView.f(this.VE);
      boolean bool2 = false;
      if (bool1)
      {
        bt localbt = this.VD;
        bool2 = false;
        if (localbt != null)
          bool2 = this.VD.h(paramMotionEvent);
      }
      return bool2;
      this.TW = false;
      continue;
      this.TW = true;
    }
  }

  public final void lX()
  {
    this.VD = new bt();
    this.VD.a(MapView.d(this.VE));
    this.VD.a(this.VB);
  }

  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    this.VE.Vq.t((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    return true;
  }

  public final boolean onDoubleTapEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public final boolean onDown(MotionEvent paramMotionEvent)
  {
    return true;
  }

  protected final void onDraw(Canvas paramCanvas)
  {
    MapView.d(this.VE).WX.a(paramCanvas);
  }

  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (!this.VC.isFinished())
      this.VC.forceFinished(true);
    this.Um = 0;
    this.Un = 0;
    int i = 3 * MapView.d(this.VE).WW.mU();
    int j = 3 * MapView.d(this.VE).WW.mE();
    this.VC.fling(0, 0, 9 * (int)-paramFloat1 / 20, 9 * (int)-paramFloat2 / 20, -i, i, -j, j);
    return true;
  }

  public final void onLongPress(MotionEvent paramMotionEvent)
  {
    if ((MapView.d(this.VE) == null) || (MapView.d(this.VE).WX == null));
    while (true)
    {
      return;
      bi localbi = MapView.d(this.VE).WX;
      GeoPoint localGeoPoint = localbi.Xk.WV.s((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      for (int i = -1 + localbi.Xb.size(); i >= 0; i--)
      {
        m localm = (m)localbi.Xb.get(i);
        if (localm != null)
          localm.b(localGeoPoint, bm.a(localbi.Xk.WW));
      }
    }
  }

  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    float f = MapView.d(this.VE).WW.mR();
    if (f != 0.0F)
    {
      paramFloat1 /= f;
      paramFloat2 /= f;
    }
    MapView.e(this.VE).l(paramFloat1, paramFloat2);
    this.VE.invalidate();
    return true;
  }

  public final void onShowPress(MotionEvent paramMotionEvent)
  {
  }

  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    bi localbi1 = MapView.d(this.VE).WX;
    GeoPoint localGeoPoint = localbi1.Xk.WV.s((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
    boolean bool;
    for (int i = -1 + localbi1.Xb.size(); ; i--)
    {
      bool = false;
      if (i >= 0)
      {
        m localm = (m)localbi1.Xb.get(i);
        if ((localm != null) && (localm.a(localGeoPoint, bm.a(localbi1.Xk.WW))))
          bool = true;
      }
      else
      {
        if (bool)
          break;
        MapView.d(this.VE).WV.s((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
        bi localbi2 = MapView.d(this.VE).WX;
        for (int j = -1 + localbi2.Xb.size(); j >= 0; j--)
          localbi2.Xb.get(j);
      }
    }
    return bool;
  }

  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.l
 * JD-Core Version:    0.6.2
 */