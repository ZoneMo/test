package com.google.android.gms.plus;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.internal.el;

public final class PlusOneButton extends ViewGroup
{
  private final el ST;

  public PlusOneButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.ST = new el(paramContext, paramAttributeSet);
    addView(this.ST);
    if (isInEditMode())
      return;
    this.ST.iW();
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.ST.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    el localel = this.ST;
    measureChild(localel, paramInt1, paramInt2);
    setMeasuredDimension(localel.getMeasuredWidth(), localel.getMeasuredHeight());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.plus.PlusOneButton
 * JD-Core Version:    0.6.2
 */