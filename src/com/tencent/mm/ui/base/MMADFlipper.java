package com.tencent.mm.ui.base;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import com.tencent.mm.an.a;
import com.tencent.mm.sdk.platformtools.aa;

public class MMADFlipper extends ViewGroup
{
  private int dC;
  private float eE;
  private float eF;
  private VelocityTracker eH;
  private Scroller en;
  private int fmC = 0;
  private Interpolator gyl;
  private int gym;
  private int gyn;
  private boolean gyo = false;
  private boolean gyp = true;
  private e gyq;
  private Context mContext;

  public MMADFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MMADFlipper(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
    this.gyl = new LinearInterpolator();
    this.en = new Scroller(this.mContext, this.gyl);
    this.dC = ViewConfiguration.get(this.mContext).getScaledDoubleTapSlop();
  }

  private boolean aGE()
  {
    return getChildCount() > 1;
  }

  private void mO(int paramInt)
  {
    int i = Math.max(0, Math.min(paramInt, -1 + getChildCount()));
    if (getScrollX() != i * getWidth())
    {
      int j = i * getWidth() - getScrollX();
      this.en.startScroll(getScrollX(), 0, j, 0, a.n(getContext(), 2 * Math.abs(j)));
      invalidate();
    }
    if (this.gyq != null);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(this.gym);
    arrayOfObject[1] = Integer.valueOf(this.gyn);
    arrayOfObject[2] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.MMFlipper", "mCurScreen:%d, mLastScreen:%d, whichScreen:%d", arrayOfObject);
    this.gyn = paramInt;
  }

  @TargetApi(14)
  private void mP(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 14)
      setScrollX(paramInt);
    while (this.en == null)
      return;
    this.en.setFinalX(paramInt);
  }

  public void computeScroll()
  {
    if (this.en.computeScrollOffset())
    {
      scrollTo(this.en.getCurrX(), this.en.getCurrY());
      postInvalidate();
    }
    do
    {
      do
        return;
      while (!this.gyo);
      this.gyo = false;
      if (this.gym <= 0)
      {
        if (getChildCount() > 1);
        for (int i = -2 + getChildCount(); ; i = getChildCount())
        {
          this.gym = i;
          mP(this.gym * getWidth());
          return;
        }
      }
    }
    while (this.gym < -1 + getChildCount());
    this.gym = 1;
    mP(this.gym * getWidth());
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
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
          if ((m > this.dC) && (n < this.dC));
          int i2;
          for (int i1 = i; ; i2 = 0)
          {
            if (i1 == 0)
              break label167;
            this.fmC = i;
            break;
          }
          label167: this.fmC = 0;
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
    int i = getChildCount();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() != 8)
      {
        int m = localView.getMeasuredWidth();
        localView.layout(k, 0, k + m, localView.getMeasuredHeight());
        k += m;
      }
      j++;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    View.MeasureSpec.getSize(paramInt1);
    View.MeasureSpec.getSize(paramInt2);
    int i = getChildCount();
    for (int j = 0; j < i; j++)
      getChildAt(j).measure(paramInt1, paramInt2);
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
    if (j > 600)
    {
      if (aGE())
      {
        this.gym = (-1 + this.gym);
        mO(this.gym);
      }
      this.gyo = true;
    }
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
      if (j < -600)
      {
        if (aGE())
        {
          this.gym = (1 + this.gym);
          mO(this.gym);
        }
        this.gyo = true;
      }
      else
      {
        int k = getWidth();
        mO((getScrollX() + k / 2) / k);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMADFlipper
 * JD-Core Version:    0.6.2
 */