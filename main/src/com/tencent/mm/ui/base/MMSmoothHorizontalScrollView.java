package com.tencent.mm.ui.base;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import android.widget.HorizontalScrollView;

public class MMSmoothHorizontalScrollView extends HorizontalScrollView
{
  private Rect dWv = new Rect();
  private TranslateAnimation dWw;
  private Interpolator doK = new DecelerateInterpolator();
  private float eE;
  private View gBR;

  public MMSmoothHorizontalScrollView(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMSmoothHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setFadingEdgeLength(0);
  }

  protected void onFinishInflate()
  {
    if (getChildCount() > 0)
      this.gBR = getChildAt(0);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    if (this.gBR == null)
      return super.onTouchEvent(paramMotionEvent);
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    label383: 
    while (true)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.eE = paramMotionEvent.getX();
      continue;
      float f = paramMotionEvent.getX();
      if (this.eE == 0.0F)
        this.eE = f;
      int j = (int)(this.eE - f) / 2;
      scrollBy(j, 0);
      this.eE = f;
      int k = this.gBR.getMeasuredWidth() - getWidth();
      int m = getScrollX();
      int n;
      if (m != 0)
      {
        n = 0;
        if (m != k);
      }
      else
      {
        n = i;
      }
      if (n != 0)
      {
        if (this.dWv.isEmpty())
          this.dWv.set(this.gBR.getLeft(), this.gBR.getTop(), this.gBR.getRight(), this.gBR.getBottom());
        this.gBR.layout(this.gBR.getLeft() - j, this.gBR.getTop(), this.gBR.getRight() - j, this.gBR.getBottom());
        continue;
        this.eE = 0.0F;
        if (!this.dWv.isEmpty());
        while (true)
        {
          if (i == 0)
            break label383;
          this.dWw = new TranslateAnimation(this.gBR.getLeft(), this.dWv.left, 0.0F, 0.0F);
          this.dWw.setInterpolator(this.doK);
          this.dWw.setDuration(Math.abs(this.gBR.getLeft() - this.dWv.left));
          this.gBR.startAnimation(this.dWw);
          this.gBR.layout(this.dWv.left, this.dWv.top, this.dWv.right, this.dWv.bottom);
          this.dWv.setEmpty();
          break;
          i = 0;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMSmoothHorizontalScrollView
 * JD-Core Version:    0.6.2
 */