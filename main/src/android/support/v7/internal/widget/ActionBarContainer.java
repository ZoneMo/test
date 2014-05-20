package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.tencent.mm.i;
import com.tencent.mm.p;

public class ActionBarContainer extends FrameLayout
{
  private ActionBarView hf;
  private Drawable ke;
  private boolean lR;
  private View lS;
  private Drawable lT;
  private Drawable lU;
  private boolean lV;
  private boolean lW;

  public ActionBarContainer(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBackgroundDrawable(null);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bIU);
    this.ke = localTypedArray.getDrawable(10);
    this.lT = localTypedArray.getDrawable(11);
    if (getId() == i.aMi)
    {
      this.lV = bool;
      this.lU = localTypedArray.getDrawable(12);
    }
    localTypedArray.recycle();
    if (this.lV)
      if (this.lU != null);
    while (true)
    {
      setWillNotDraw(bool);
      return;
      bool = false;
      continue;
      if ((this.ke != null) || (this.lT != null))
        bool = false;
    }
  }

  public final void a(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (this.lS != null)
      removeView(this.lS);
    this.lS = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null)
    {
      addView(paramScrollingTabContainerView);
      ViewGroup.LayoutParams localLayoutParams = paramScrollingTabContainerView.getLayoutParams();
      localLayoutParams.width = -1;
      localLayoutParams.height = -2;
      paramScrollingTabContainerView.x(false);
    }
  }

  public final void b(Drawable paramDrawable)
  {
    boolean bool = true;
    if (this.ke != null)
    {
      this.ke.setCallback(null);
      unscheduleDrawable(this.ke);
    }
    this.ke = paramDrawable;
    if (paramDrawable != null)
      paramDrawable.setCallback(this);
    if (this.lV)
      if (this.lU != null);
    while (true)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
      bool = false;
      continue;
      if ((this.ke != null) || (this.lT != null))
        bool = false;
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((this.ke != null) && (this.ke.isStateful()))
      this.ke.setState(getDrawableState());
    if ((this.lT != null) && (this.lT.isStateful()))
      this.lT.setState(getDrawableState());
    if ((this.lU != null) && (this.lU.isStateful()))
      this.lU.setState(getDrawableState());
  }

  public void onDraw(Canvas paramCanvas)
  {
    if ((getWidth() == 0) || (getHeight() == 0));
    do
    {
      do
      {
        return;
        if (!this.lV)
          break;
      }
      while (this.lU == null);
      this.lU.draw(paramCanvas);
      return;
      if (this.ke != null)
        this.ke.draw(paramCanvas);
    }
    while ((this.lT == null) || (!this.lW));
    this.lT.draw(paramCanvas);
  }

  public void onFinishInflate()
  {
    super.onFinishInflate();
    this.hf = ((ActionBarView)findViewById(i.akJ));
  }

  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    return true;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return (this.lR) || (super.onInterceptTouchEvent(paramMotionEvent));
  }

  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = true;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i;
    if ((this.lS != null) && (this.lS.getVisibility() != 8))
      i = bool1;
    int j;
    int k;
    while ((this.lS != null) && (this.lS.getVisibility() != 8))
    {
      j = getMeasuredHeight();
      k = this.lS.getMeasuredHeight();
      if ((0x2 & this.hf.getDisplayOptions()) != 0)
        break label199;
      int m = getChildCount();
      int n = 0;
      while (true)
        if (n < m)
        {
          View localView = getChildAt(n);
          if ((localView != this.lS) && (!this.hf.cO()))
            localView.offsetTopAndBottom(k);
          n++;
          continue;
          i = 0;
          break;
        }
      this.lS.layout(paramInt1, 0, paramInt3, k);
    }
    if (this.lV)
    {
      if (this.lU == null)
        break label353;
      this.lU.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }
    while (true)
    {
      if (bool1)
        invalidate();
      return;
      label199: this.lS.layout(paramInt1, j - k, paramInt3, j);
      break;
      if (this.ke != null)
        this.ke.setBounds(this.hf.getLeft(), this.hf.getTop(), this.hf.getRight(), this.hf.getBottom());
      for (boolean bool2 = bool1; ; bool2 = false)
      {
        boolean bool3 = false;
        if (i != 0)
        {
          Drawable localDrawable = this.lT;
          bool3 = false;
          if (localDrawable != null)
            bool3 = bool1;
        }
        this.lW = bool3;
        if (bool3)
        {
          this.lT.setBounds(this.lS.getLeft(), this.lS.getTop(), this.lS.getRight(), this.lS.getBottom());
          break;
        }
        bool1 = bool2;
        break;
      }
      label353: bool1 = false;
    }
  }

  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.hf == null);
    while (true)
    {
      return;
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.hf.getLayoutParams();
      if (this.hf.cO());
      for (int i = 0; (this.lS != null) && (this.lS.getVisibility() != 8) && (View.MeasureSpec.getMode(paramInt2) == -2147483648); i = this.hf.getMeasuredHeight() + localLayoutParams.topMargin + localLayoutParams.bottomMargin)
      {
        int j = View.MeasureSpec.getSize(paramInt2);
        setMeasuredDimension(getMeasuredWidth(), Math.min(i + this.lS.getMeasuredHeight(), j));
        return;
      }
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }

  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0);
    for (boolean bool = true; ; bool = false)
    {
      if (this.ke != null)
        this.ke.setVisible(bool, false);
      if (this.lT != null)
        this.lT.setVisible(bool, false);
      if (this.lU != null)
        this.lU.setVisible(bool, false);
      return;
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return ((paramDrawable == this.ke) && (!this.lV)) || ((paramDrawable == this.lT) && (this.lW)) || ((paramDrawable == this.lU) && (this.lV)) || (super.verifyDrawable(paramDrawable));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarContainer
 * JD-Core Version:    0.6.2
 */