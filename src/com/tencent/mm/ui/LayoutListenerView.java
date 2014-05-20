package com.tencent.mm.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

class LayoutListenerView extends LinearLayout
{
  private ba gmJ;
  private bb gmK;

  public LayoutListenerView(Context paramContext)
  {
    super(paramContext);
  }

  public LayoutListenerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a(ba paramba)
  {
    this.gmJ = paramba;
  }

  public final void a(bb parambb)
  {
    this.gmK = parambb;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.gmJ != null)
      this.gmJ.aEI();
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.gmK != null)
      this.gmK.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.LayoutListenerView
 * JD-Core Version:    0.6.2
 */