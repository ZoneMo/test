package com.tencent.mm.ui.base;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;

public class MMRadioGroupView extends LinearLayout
{
  private int gBt = -1;
  private int gBu = -1;
  private cs gBv = new co(this);
  private cp gBw;
  private cq gBx = new cq(this, (byte)0);
  private MMRadioImageButton gBy;
  private cr gBz;

  public MMRadioGroupView(Context paramContext)
  {
    this(paramContext, null);
  }

  public MMRadioGroupView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    super.setOnHierarchyChangeListener(this.gBx);
  }

  private void n(int paramInt, boolean paramBoolean)
  {
    View localView = findViewById(paramInt);
    if ((localView != null) && ((localView instanceof MMRadioImageButton)))
      ((MMRadioImageButton)localView).setChecked(paramBoolean);
  }

  private void nj(int paramInt)
  {
    this.gBt = paramInt;
    if (this.gBw != null)
      this.gBw.a(this, this.gBt);
  }

  public final void a(cp paramcp)
  {
    this.gBw = paramcp;
  }

  public final void a(cr paramcr)
  {
    this.gBz = paramcr;
  }

  public final int aHn()
  {
    return this.gBu;
  }

  public final MMRadioImageButton aHo()
  {
    return this.gBy;
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof MMRadioImageButton))
    {
      MMRadioImageButton localMMRadioImageButton = (MMRadioImageButton)paramView;
      if (localMMRadioImageButton.isChecked())
      {
        if (this.gBt != -1)
          n(this.gBt, false);
        nj(localMMRadioImageButton.getId());
        this.gBy = localMMRadioImageButton;
      }
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public final int getCheckedRadioButtonId()
  {
    return this.gBt;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (this.gBt != -1)
    {
      n(this.gBt, true);
      nj(this.gBt);
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (((paramInt1 > 0) || (paramInt2 > 0)) && (this.gBz != null))
      this.gBz.kQ(paramInt1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.MMRadioGroupView
 * JD-Core Version:    0.6.2
 */