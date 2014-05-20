package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public class MMFlipper extends ViewGroup
{
  private int dC;
  private Interpolator doK;
  private float eE;
  private float eF;
  private VelocityTracker eH;
  private Scroller en;
  private int fmC = 0;
  protected int gym;
  protected int gyn;
  private boolean gyp = true;
  protected int gzn;
  private int gzo = 0;
  private boolean gzp = false;
  private at gzq;
  private as gzr;
  int gzs = -123454321;
  int gzt = -123454321;

  public MMFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
    r(paramContext);
  }

  public MMFlipper(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    r(paramContext);
  }

  private void r(Context paramContext)
  {
    this.doK = new au();
    this.en = new Scroller(paramContext, this.doK);
    this.gyn = -1;
    int i = this.gzo;
    this.gym = i;
    this.gzn = i;
    this.dC = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  }

  public final void a(as paramas)
  {
    this.gzr = paramas;
  }

  public final void a(at paramat)
  {
    this.gzq = paramat;
  }

  public final void aGN()
  {
    this.gyn = -1;
    int i = this.gzo;
    this.gym = i;
    this.gzn = i;
  }

  public final boolean aGO()
  {
    return this.gzp;
  }

  public final int aGP()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.gym);
    aa.e("MicroMsg.MMFlipper", "cur screen is %d", arrayOfObject);
    return this.gym;
  }

  public final void am(boolean paramBoolean)
  {
    this.gyp = paramBoolean;
  }

  public final void bg(int paramInt1, int paramInt2)
  {
    int i = Math.max(0, Math.min(paramInt1, -1 + getChildCount()));
    int j;
    Scroller localScroller;
    int k;
    if (getScrollX() != i * getWidth())
    {
      j = i * getWidth() - getScrollX();
      localScroller = this.en;
      k = getScrollX();
      if (paramInt2 > 0)
        break label132;
    }
    label132: for (int m = a.n(getContext(), 2 * Math.abs(j)); ; m = paramInt2)
    {
      localScroller.startScroll(k, 0, j, 0, m);
      if (this.gym != i)
      {
        this.gzp = true;
        this.gzn += i - this.gym;
      }
      this.gyn = this.gym;
      this.gym = i;
      invalidate();
      return;
    }
  }

  public void computeScroll()
  {
    this.en.getCurrX();
    if (this.en.computeScrollOffset())
    {
      scrollTo(this.en.getCurrX(), this.en.getCurrY());
      postInvalidate();
    }
    do
    {
      do
        return;
      while (!this.gzp);
      this.gzp = false;
    }
    while (this.gzq == null);
    this.gzq.ac(this.gyn, this.gzn);
  }

  public final void mZ(int paramInt)
  {
    int i = Math.max(0, Math.min(paramInt, -1 + getChildCount()));
    this.gzp = false;
    if (!this.en.isFinished())
      this.en.abortAnimation();
    this.gyn = this.gym;
    this.gym = i;
    scrollTo(i * getWidth(), 0);
  }

  public final void na(int paramInt)
  {
    this.gzn = paramInt;
  }

  public final void nb(int paramInt)
  {
    int i = Math.max(0, Math.min(paramInt, -1 + getChildCount()));
    this.gzp = false;
    if (!this.en.isFinished())
      this.en.abortAnimation();
    if (this.gzq != null)
      this.gzq.ac(this.gyn, i);
    this.gyn = this.gym;
    this.gym = i;
    this.gzn = i;
    scrollTo(i * getWidth(), 0);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    if (!this.gyp)
      i = super.onInterceptTouchEvent(paramMotionEvent);
    while (true)
    {
      return i;
      if (getChildCount() == i)
        return super.onInterceptTouchEvent(paramMotionEvent);
      int j = paramMotionEvent.getAction();
      if ((j != 2) || (this.fmC == 0))
      {
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        switch (j)
        {
        default:
        case 2:
        case 0:
        case 1:
        case 3:
        }
        while (this.fmC == 0)
        {
          return false;
          int m = (int)Math.abs(this.eE - f1);
          int n = (int)Math.abs(this.eF - f2);
          aa.v("MicroMsg.MMFlipper", "xDif = " + m + ", yDif = " + n);
          if ((m > this.dC) && (n < this.dC));
          int i2;
          for (int i1 = i; ; i2 = 0)
          {
            if (i1 == 0)
              break label199;
            this.fmC = i;
            break;
          }
          label199: this.fmC = 0;
          continue;
          this.eE = f1;
          this.eF = f2;
          if (this.en.isFinished());
          for (int k = 0; ; k = i)
          {
            this.fmC = k;
            break;
          }
          this.fmC = 0;
        }
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    long l = cj.FE();
    int i = getChildCount();
    int j = 0;
    for (int k = 0; k < i; k++)
    {
      View localView = getChildAt(k);
      if (localView.getVisibility() != 8)
      {
        int m = localView.getMeasuredWidth();
        aa.v("MicroMsg.MMFlipper", "flipper onLayout childWidth:" + m);
        localView.layout(j, 0, j + m, localView.getMeasuredHeight());
        j += m;
      }
    }
    aa.v("MicroMsg.MMFlipper", "use " + cj.O(l) + " ms, flipper onLayout changed:" + paramBoolean + " Left,Top,Right,Bottom:" + paramInt1 + "," + paramInt2 + "," + paramInt3 + "," + paramInt4);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    long l = cj.FE();
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getSize(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt2);
    if (this.gzr != null)
      this.gzr.ab(i, j);
    this.gzs = i;
    this.gzt = j;
    int k = getChildCount();
    for (int m = 0; m < k; m++)
      getChildAt(m).measure(paramInt1, paramInt2);
    scrollTo(i * this.gym, 0);
    aa.v("MicroMsg.MMFlipper", "flipper onMeasure:" + i + "," + View.MeasureSpec.getSize(paramInt2) + " childCount:" + k + ", use " + cj.O(l));
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (getChildCount() == 1)
      return super.onTouchEvent(paramMotionEvent);
    if (this.eH == null)
      this.eH = VelocityTracker.obtain();
    this.eH.addMovement(paramMotionEvent);
    int i = paramMotionEvent.getAction();
    float f = paramMotionEvent.getX();
    paramMotionEvent.getY();
    switch (i)
    {
    default:
      return true;
    case 0:
      if (!this.en.isFinished())
        this.en.abortAnimation();
      this.eE = f;
      return true;
    case 2:
      int m = (int)(this.eE - f);
      this.eE = f;
      scrollBy(m, 0);
      return true;
    case 1:
    case 3:
    }
    VelocityTracker localVelocityTracker = this.eH;
    localVelocityTracker.computeCurrentVelocity(1000);
    int j = (int)localVelocityTracker.getXVelocity();
    if ((j > 600) && (this.gym > 0))
      bg(-1 + this.gym, -1);
    while (true)
    {
      if (this.eH != null)
      {
        this.eH.recycle();
        this.eH = null;
      }
      this.fmC = 0;
      this.eE = 0.0F;
      this.eF = 0.0F;
      return true;
      if ((j < -600) && (this.gym < -1 + getChildCount()))
      {
        bg(1 + this.gym, -1);
      }
      else
      {
        int k = getWidth();
        bg((getScrollX() + k / 2) / k, -1);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMFlipper
 * JD-Core Version:    0.6.2
 */