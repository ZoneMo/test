package com.tencent.mm.ui.base;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

public class MMSlideDelView extends ViewGroup
{
  private dc cPK;
  private cy cPL;
  private cz cPN;
  private final int dC;
  private int dwl;
  private float eE;
  private float eF;
  private VelocityTracker eH;
  private final Scroller en;
  private boolean gBH = false;
  private boolean gBI = false;
  private cx gBJ;
  private boolean gBK = true;
  private Runnable gBL;
  private long gBM;
  private boolean gBN = false;
  private cw gBO = null;
  private da gBP;
  long time;

  public MMSlideDelView(Context paramContext)
  {
    super(paramContext, null);
    this.en = new Scroller(paramContext, new LinearInterpolator());
    this.dC = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    this.gBM = ViewConfiguration.getLongPressTimeout();
  }

  public MMSlideDelView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.en = new Scroller(paramContext, new LinearInterpolator());
    this.dC = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    this.gBM = ViewConfiguration.getLongPressTimeout();
  }

  public static cz aHp()
  {
    return new cu();
  }

  private void aHr()
  {
    if (this.eH != null)
    {
      this.eH.clear();
      this.eH = null;
    }
  }

  private void aHs()
  {
    Handler localHandler = getHandler();
    if (localHandler != null)
      localHandler.removeCallbacks(this.gBJ);
  }

  private void aHt()
  {
    setPressed(false);
    if (this.gBI)
    {
      aHv();
      return;
    }
    VelocityTracker localVelocityTracker = this.eH;
    localVelocityTracker.computeCurrentVelocity(1000);
    int i = (int)localVelocityTracker.getXVelocity();
    MMSlideDelView localMMSlideDelView;
    if (i < -600)
    {
      int n = getScrollX();
      int i1 = getChildAt(1).getWidth() - n;
      this.cPN.a(this, true);
      this.gBI = true;
      this.en.startScroll(n, 0, i1, 0, 100);
      localMMSlideDelView = this;
    }
    while (true)
    {
      localMMSlideDelView.invalidate();
      while (true)
      {
        if (this.eH != null)
        {
          this.eH.recycle();
          this.eH = null;
        }
        this.gBH = false;
        ar(false);
        return;
        if (i <= 600)
          break;
        aHv();
      }
      int j = getScrollX();
      int k = getChildAt(1).getWidth();
      int m = k - j;
      if (j > k / 2)
      {
        this.cPN.a(this, true);
        this.gBI = true;
        this.en.startScroll(j, 0, m, 0, 100);
        localMMSlideDelView = this;
      }
      else
      {
        this.gBI = false;
        this.cPN.a(this, false);
        this.en.startScroll(j, 0, -j, 0, 100);
        localMMSlideDelView = this;
      }
    }
  }

  private void ar(boolean paramBoolean)
  {
    ViewParent localViewParent = getParent();
    if (localViewParent != null)
      localViewParent.requestDisallowInterceptTouchEvent(paramBoolean);
  }

  public final void a(cy paramcy)
  {
    this.cPL = paramcy;
  }

  public final void a(cz paramcz)
  {
    this.cPN = paramcz;
  }

  public final void a(dc paramdc)
  {
    this.cPK = paramdc;
  }

  public final void aHq()
  {
    this.gBK = false;
  }

  public final void aHu()
  {
    this.cPN.a(this, false);
    this.gBI = false;
    scrollTo(0, 0);
    invalidate();
  }

  public final void aHv()
  {
    int i = getScrollX();
    this.cPN.a(this, false);
    this.gBI = false;
    this.en.startScroll(i, 0, -i, 0, 100);
    invalidate();
  }

  public void buildDrawingCache()
  {
  }

  public void buildDrawingCache(boolean paramBoolean)
  {
  }

  public void computeScroll()
  {
    if (this.en.computeScrollOffset())
    {
      scrollTo(this.en.getCurrX(), this.en.getCurrY());
      postInvalidate();
    }
  }

  public Bitmap getDrawingCache()
  {
    return null;
  }

  public Bitmap getDrawingCache(boolean paramBoolean)
  {
    return null;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (getChildCount() < 2);
    while (true)
    {
      return;
      int i = getChildCount();
      int j = 0;
      int k = 0;
      while (j < i)
      {
        View localView = getChildAt(j);
        if (localView.getVisibility() != 8)
        {
          int m = localView.getMeasuredWidth();
          localView.layout(k, 0, k + m, paramInt4 - paramInt2);
          k += m;
        }
        j++;
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (getChildCount() < 2)
      return;
    int i = View.MeasureSpec.getSize(paramInt1);
    getChildAt(0).measure(paramInt1, paramInt2);
    int j = Math.max(0, getChildAt(0).getMeasuredHeight());
    ViewGroup.LayoutParams localLayoutParams = getChildAt(1).getLayoutParams();
    View localView = getChildAt(1);
    if ((localView != null) && (localView.getVisibility() != 8))
    {
      localView.measure(View.MeasureSpec.makeMeasureSpec(localLayoutParams.width, 1073741824), View.MeasureSpec.makeMeasureSpec(j, 1073741824));
      j = Math.max(j, localView.getMeasuredHeight());
    }
    setMeasuredDimension(resolveSize(i, paramInt1), resolveSize(j, paramInt2));
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    if (!this.gBK)
      i = 0;
    float f1;
    float f2;
    Handler localHandler4;
    do
    {
      return i;
      int j = paramMotionEvent.getAction();
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      if ((this.cPN.aii()) && (!this.gBI))
      {
        aa.v("MicroMsg.MMSlideDelView", "onTouchEvent a menu has been shown, skip");
        this.gBN = false;
        this.cPN.aij();
      }
      if (this.eH == null)
        this.eH = VelocityTracker.obtain();
      this.eH.addMovement(paramMotionEvent);
      if (this.gBN)
        return false;
      switch (j)
      {
      default:
        localHandler4 = getHandler();
      case 0:
      case 2:
      case 1:
      case 3:
      }
    }
    while (localHandler4 == null);
    localHandler4.removeCallbacks(this.gBO);
    return i;
    if ((getContext() instanceof MMActivity))
      ((MMActivity)getContext()).SM();
    this.gBH = false;
    if (!this.en.isFinished())
      this.en.abortAnimation();
    this.time = System.currentTimeMillis();
    if (this.cPL != null)
      this.dwl = this.cPL.K(this);
    if (this.gBJ == null)
      this.gBJ = new cx(this);
    postDelayed(this.gBJ, ViewConfiguration.getTapTimeout());
    this.eE = f1;
    this.eF = f2;
    if (this.gBO == null)
      this.gBO = new cw(this, (byte)0);
    this.gBO.arI();
    postDelayed(this.gBO, this.gBM);
    return i;
    int k = (int)(this.eE - f1);
    int m = (int)(this.eF - f2);
    int n = getScrollX();
    if (!this.gBH)
    {
      if ((k < 0) || (Math.abs(k) < this.dC / 3))
        break label524;
      if (m == 0)
        m = i;
      if (Math.abs(k / m) <= 3)
        break label524;
      int i2 = i;
      label389: if ((i2 != 0) || (this.gBI))
      {
        this.gBH = i;
        ar(i);
      }
    }
    int i1;
    if (this.gBH)
    {
      View localView = getChildAt(i);
      if ((localView != null) && (!localView.isShown()))
      {
        localView.setVisibility(0);
        if (this.gBP == null);
      }
      aHs();
      setPressed(false);
      ar(i);
      if (n + k >= 0)
        break label530;
      i1 = -n;
    }
    while (true)
    {
      Handler localHandler3 = getHandler();
      if (localHandler3 != null)
        localHandler3.removeCallbacks(this.gBO);
      scrollBy(i1, 0);
      this.eE = f1;
      this.eF = f2;
      return i;
      label524: int i3 = 0;
      break label389;
      label530: if (n + k > getChildAt(i).getWidth())
      {
        i1 = getChildAt(i).getWidth() - n;
        continue;
        aHs();
        if ((!this.gBH) && ((isPressed()) || (System.currentTimeMillis() - this.time < 200L)) && (this.cPK != null) && (!this.gBI))
        {
          setPressed(i);
          if (this.gBL != null)
            removeCallbacks(this.gBL);
          this.gBL = new cv(this);
          postDelayed(this.gBL, ViewConfiguration.getPressedStateDuration());
        }
        while (true)
        {
          if (this.gBH)
            aHt();
          aHr();
          Handler localHandler2 = getHandler();
          if (localHandler2 == null)
            break;
          localHandler2.removeCallbacks(this.gBO);
          return i;
          setPressed(false);
        }
        aHs();
        setPressed(false);
        if (this.gBH)
          aHt();
        aHr();
        Handler localHandler1 = getHandler();
        if (localHandler1 == null)
          break;
        localHandler1.removeCallbacks(this.gBO);
        return i;
      }
      i1 = k;
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    aa.v("MicroMsg.MMSlideDelView", "window focus change, reset long press status");
    this.gBN = false;
    super.onWindowFocusChanged(paramBoolean);
  }

  public final void setView(View paramView)
  {
    if (getChildCount() == 2)
      removeViewAt(0);
    addView(paramView, 0, new ViewGroup.LayoutParams(-1, -2));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMSlideDelView
 * JD-Core Version:    0.6.2
 */