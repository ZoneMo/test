package com.tencent.mapapi.map;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Scroller;
import android.widget.ZoomControls;
import java.util.Iterator;
import java.util.List;

public class MapView extends ViewGroup
  implements ax
{
  private bh Vm;
  private l Vn;
  private f Vo;
  ZoomControls Vp = null;
  ah Vq = null;
  View.OnClickListener Vr = null;
  View.OnClickListener Vs = null;
  private Handler Vt = null;
  private Runnable Vu = null;
  long Vv = 10000L;
  private boolean Vw = true;
  private Handler Vx = new Handler();
  private Runnable Vy = new g(this);
  private boolean j = true;
  private int m = 120000;

  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  private MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setClickable(true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16843281 });
    String str = localTypedArray.getString(0);
    localTypedArray.recycle();
    if ((paramContext instanceof MapActivity))
      ((MapActivity)paramContext).a(this);
    d(paramContext, str);
  }

  public MapView(Context paramContext, String paramString)
  {
    super(paramContext);
    setClickable(true);
    if ((paramContext instanceof MapActivity))
      ((MapActivity)paramContext).a(this);
    d(paramContext, paramString);
  }

  private void d(Context paramContext, String paramString)
  {
    setBackgroundColor(Color.rgb(242, 239, 238));
    this.Vn = new l(this, getContext());
    MapView.LayoutParams localLayoutParams = new MapView.LayoutParams();
    addView(this.Vn, 0, localLayoutParams);
    bq.a(paramContext);
    this.Vm = new bh(getContext(), this, paramString);
    this.Vn.lX();
    this.Vq = new ah();
    this.Vq.a(this.Vm);
    this.Vp = new ZoomControls(getContext());
    this.Vr = new h(this);
    this.Vs = new i(this);
    this.Vp.setOnZoomInClickListener(this.Vr);
    this.Vp.setOnZoomOutClickListener(this.Vs);
    this.Vt = new Handler();
    this.Vu = new j(this);
    c(false, false);
    this.Vo = new f(this.Vm);
    setEnabled(true);
    this.Vm.WW.G(false);
    if (this.Vx == null)
      this.Vx = new Handler();
    this.Vx.removeCallbacks(this.Vy);
    this.Vx.postDelayed(this.Vy, this.m);
  }

  final void c(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.Vt == null) || (this.Vu == null));
    do
    {
      do
        return;
      while (!this.Vw);
      if ((paramBoolean1) && (this.Vp.getVisibility() != 0))
        this.Vp.setVisibility(0);
    }
    while (paramBoolean2 != true);
    this.Vt.removeCallbacks(this.Vu);
    this.Vt.postDelayed(this.Vu, this.Vv);
  }

  public void computeScroll()
  {
    if (l.b(this.Vn).computeScrollOffset())
    {
      int i = l.b(this.Vn).getCurrX();
      int k = l.b(this.Vn).getCurrY();
      int n = i - l.e(this.Vn);
      int i1 = k - l.f(this.Vn);
      float f = this.Vm.WW.mR();
      if (f != 0.0F)
      {
        n = (int)(n / f);
        i1 = (int)(i1 / f);
      }
      l.a(this.Vn, i);
      l.b(this.Vn, k);
      GeoPoint localGeoPoint = this.Vm.WV.s(n + this.Vm.WZ.mY().x, i1 + this.Vm.WZ.mY().y);
      if (l.b(this.Vn).isFinished())
      {
        this.Vm.WW.G(false);
        return;
      }
      this.Vm.WW.h(localGeoPoint);
      return;
    }
    super.computeScroll();
  }

  public final List getOverlays()
  {
    if ((this.Vm == null) || (this.Vm.WX == null))
      return null;
    return this.Vm.WX.Xb;
  }

  public int getZoomLevel()
  {
    return this.Vm.WW.mV();
  }

  public void invalidate()
  {
    super.invalidate();
    if (this.Vn != null)
      this.Vn.invalidate();
  }

  final void me()
  {
    this.Vp.bringToFront();
  }

  final bh mm()
  {
    return this.Vm;
  }

  public final GeoPoint mn()
  {
    return this.Vm.WW.mW();
  }

  public final f mo()
  {
    return this.Vo;
  }

  public final o mp()
  {
    return this.Vm.WV;
  }

  public final boolean mq()
  {
    return bq.VK == br.XG;
  }

  final String mr()
  {
    return this.Vm.WY.mP();
  }

  final void ms()
  {
    if (this.Vm.WW.mV() == this.Vm.WW.mT())
      this.Vp.setIsZoomOutEnabled(false);
    while (this.Vm.WW.mV() == this.Vm.WW.mS())
    {
      this.Vp.setIsZoomInEnabled(false);
      return;
      this.Vp.setIsZoomOutEnabled(true);
    }
    this.Vp.setIsZoomInEnabled(true);
  }

  public final void mt()
  {
    if (this.Vm.WW.UN == true)
      return;
    this.Vm.WY.WU.G(false);
  }

  public final void onDestroy()
  {
    this.Vm.WW.UN = false;
    int i = getChildCount();
    for (int k = 0; k < i; k++)
      if (getChildAt(k) != null)
      {
        if (getChildAt(k).getBackground() != null)
          getChildAt(k).getBackground().setCallback(null);
        getChildAt(k).setBackgroundDrawable(null);
      }
    this.Vm.WY.WU.lX();
    if (this.Vq != null)
      this.Vq.md();
    this.m = 1410065408;
    this.Vx.removeCallbacks(this.Vy);
    this.Vy = null;
    this.Vx = null;
    this.Vv = 1410065408L;
    this.Vt.removeCallbacks(this.Vu);
    this.Vu = null;
    this.Vt = null;
    l.a(this.Vn).setIsLongpressEnabled(false);
    bh localbh = this.Vm;
    localbh.WX.md();
    localbh.WX.me();
    l.b(this.Vn).forceFinished(true);
    l.c(this.Vn);
    removeView(this.Vn);
    l.d(this.Vn);
    this.Vp.setOnZoomInClickListener(null);
    this.Vp.setOnZoomOutClickListener(null);
    this.Vr = null;
    this.Vs = null;
    removeView(this.Vp);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.Vm != null)
      this.Vm.Xa.mu();
  }

  public final void onPause()
  {
    this.Vm.WY.WU.bb(1);
    this.Vm.WY.WU.mN();
    this.Vm.WW.UN = true;
    this.Vm.WY.WU.mB();
  }

  public final void onRestart()
  {
  }

  public final void onResume()
  {
    this.Vm.WW.UN = false;
    this.Vm.WY.WU.bb(1);
    this.Vm.WY.WU.mN();
    this.Vm.WY.WU.ms();
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    Point localPoint = new Point(paramInt1 / 2, paramInt2 / 2);
    this.Vm.WZ.a(localPoint);
    MapView.LayoutParams localLayoutParams = new MapView.LayoutParams(paramInt1 - 8, paramInt2 - 5);
    if (-1 == indexOfChild(this.Vp))
    {
      addView(this.Vp, localLayoutParams);
      this.Vm.WW.u(paramInt1, paramInt2);
      if ((paramInt1 != 0) && (paramInt2 != 0))
        break label108;
    }
    label108: 
    while ((this.Vm.WW.Xv == null) || (this.Vm.WW.Xw == null))
    {
      return;
      updateViewLayout(this.Vp, localLayoutParams);
      break;
    }
    this.Vm.WW.a(this.Vm.WW.Xv, this.Vm.WW.Xw, true);
    this.Vm.WW.Xv = null;
    this.Vm.WW.Xw = null;
  }

  public final void onStop()
  {
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.Vm == null)
      return true;
    bi localbi = this.Vm.WX;
    Iterator localIterator = localbi.Xb.iterator();
    boolean bool1 = false;
    boolean bool2;
    if (localIterator.hasNext())
    {
      m localm = (m)localIterator.next();
      if (localm != null)
      {
        bool2 = localm.a(paramMotionEvent, bm.a(localbi.Xk.WW));
        label73: if (!bool2);
      }
    }
    while (true)
    {
      if (bool2)
        return true;
      this.Vn.h(paramMotionEvent);
      if (paramMotionEvent.getAction() == 0)
        c(true, false);
      while (true)
      {
        return super.onTouchEvent(paramMotionEvent);
        if (paramMotionEvent.getAction() == 1)
          c(true, true);
      }
      bool1 = bool2;
      break;
      bool2 = bool1;
      break label73;
      bool2 = bool1;
    }
  }

  public void postInvalidate()
  {
    super.postInvalidate();
    if (this.Vn != null)
      this.Vn.postInvalidate();
  }

  public void setBuiltInZoomControls(boolean paramBoolean)
  {
    this.Vw = paramBoolean;
    if (this.Vw == true)
    {
      c(true, true);
      return;
    }
    this.Vt.removeCallbacks(this.Vu);
    this.Vp.setVisibility(4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.MapView
 * JD-Core Version:    0.6.2
 */