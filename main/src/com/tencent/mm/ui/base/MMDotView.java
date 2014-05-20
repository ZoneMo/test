package com.tencent.mm.ui.base;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.p;
import com.tencent.mm.sdk.platformtools.aa;

public class MMDotView extends LinearLayout
{
  private int yx = 9;

  public MMDotView(Context paramContext)
  {
    super(paramContext);
  }

  public MMDotView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d(paramContext, paramAttributeSet);
  }

  @TargetApi(11)
  public MMDotView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d(paramContext, paramAttributeSet);
  }

  private void d(Context paramContext, AttributeSet paramAttributeSet)
  {
    mX(paramContext.obtainStyledAttributes(paramAttributeSet, p.bJm).getResourceId(0, 0));
  }

  public final void mW(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.MMDotView", "setMaxCount:%d", arrayOfObject);
    this.yx = paramInt;
  }

  public final void mX(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.f("MicroMsg.MMDotView", "setDotCount:%d", arrayOfObject);
    if (paramInt < 0);
    ImageView localImageView1;
    do
    {
      return;
      if (paramInt > this.yx)
      {
        aa.i("MicroMsg.MMDotView", "large than max count");
        paramInt = this.yx;
      }
      removeAllViews();
      while (paramInt != 0)
      {
        ImageView localImageView2 = (ImageView)View.inflate(getContext(), k.aXq, null);
        localImageView2.setImageResource(h.agP);
        addView(localImageView2);
        paramInt--;
      }
      localImageView1 = (ImageView)getChildAt(0);
    }
    while (localImageView1 == null);
    localImageView1.setImageResource(h.agO);
  }

  public final void mY(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.f("MicroMsg.MMDotView", "setSelectedDot:target index is %d", arrayOfObject1);
    if (paramInt >= getChildCount())
      paramInt = -1 + getChildCount();
    while (true)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramInt);
      aa.f("MicroMsg.MMDotView", "setSelectedDot:after adjust index is %d", arrayOfObject2);
      for (int i = 0; i < getChildCount(); i++)
        ((ImageView)getChildAt(i)).setImageResource(h.agP);
      if (paramInt < 0)
        paramInt = 0;
    }
    ImageView localImageView = (ImageView)getChildAt(paramInt);
    if (localImageView != null)
      localImageView.setImageResource(h.agO);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMDotView
 * JD-Core Version:    0.6.2
 */