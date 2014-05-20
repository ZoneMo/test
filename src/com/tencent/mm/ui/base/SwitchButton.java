package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.TranslateAnimation;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.sdk.platformtools.aa;

public class SwitchButton extends FrameLayout
{
  private boolean cQJ = false;
  private long dyt;
  private CompoundButton.OnCheckedChangeListener gCu;
  private ImageView gEB;
  private int gEC = -1;
  private int gED;
  private int gEE;
  private View.OnClickListener qs;
  private int width;

  public SwitchButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void e(boolean paramBoolean, int paramInt)
  {
    aa.e("SwitchButton", "moveTo " + paramBoolean + " leftMargin " + paramInt);
    if (paramBoolean);
    for (float f = 1.0F; ; f = -1.0F)
    {
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(1, 0.0F, 0, f, 1, 0.0F, 1, 0.0F);
      localTranslateAnimation.setStartOffset(0L);
      localTranslateAnimation.setDuration(100L);
      localTranslateAnimation.setFillBefore(false);
      if (this.gEB != null)
      {
        this.gEB.startAnimation(localTranslateAnimation);
        RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.gEB.getLayoutParams();
        localLayoutParams.leftMargin = paramInt;
        this.gEB.setLayoutParams(localLayoutParams);
      }
      return;
    }
  }

  private void nl(int paramInt)
  {
    if (this.gEC != paramInt)
    {
      this.gEC = paramInt;
      if (paramInt != 1)
        break label37;
      if (this.gCu != null)
        this.gCu.onCheckedChanged(null, false);
    }
    label37: 
    while ((paramInt != 2) || (this.gCu == null))
      return;
    this.gCu.onCheckedChanged(null, true);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.gEB = ((ImageView)findViewById(i.anj));
    this.gEC = 2;
    this.gEB.setBackgroundResource(h.akj);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.width = (findViewById(i.aMC).getWidth() / 2);
    this.gED = (2 * this.width - this.gEB.getWidth());
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.cQJ);
    do
    {
      return true;
      int i = paramMotionEvent.getAction();
      int j = (int)paramMotionEvent.getX() - this.gEE;
      switch (i)
      {
      default:
        return true;
      case 0:
        this.gEE = ((int)paramMotionEvent.getX());
        this.dyt = System.currentTimeMillis();
        return true;
      case 2:
        RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.gEB.getLayoutParams();
        int k = this.gEB.getLeft();
        aa.e("SwitchButton", "betweenLeft " + k + " scape " + j);
        int m = j + k;
        int n;
        if (m > this.gED)
          n = this.gED;
        while (true)
        {
          localLayoutParams.leftMargin = n;
          this.gEB.setLayoutParams(localLayoutParams);
          return true;
          n = 0;
          if (m >= 0)
            n = m;
        }
      case 1:
      }
      long l = System.currentTimeMillis();
      if ((this.dyt == 0L) || (l - this.dyt >= 300L) || (l - this.dyt < 0L))
        break;
    }
    while (this.qs == null);
    this.qs.onClick(this);
    return true;
    if (this.gEB.getLeft() <= this.gED / 2)
    {
      e(false, 0);
      nl(1);
      return true;
    }
    e(true, this.gED);
    nl(2);
    return true;
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.qs = paramOnClickListener;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.SwitchButton
 * JD-Core Version:    0.6.2
 */