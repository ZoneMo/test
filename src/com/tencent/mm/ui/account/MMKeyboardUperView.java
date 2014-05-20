package com.tencent.mm.ui.account;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import com.tencent.mm.sdk.platformtools.aa;

public class MMKeyboardUperView extends ScrollView
{
  private int defaultHeight = -1;
  private View grB;
  private Runnable grC = new dv(this);
  private Runnable grD = new dw(this);

  public MMKeyboardUperView(Context paramContext)
  {
    super(paramContext);
  }

  public MMKeyboardUperView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public MMKeyboardUperView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public final void ag(View paramView)
  {
    this.grB = paramView;
    this.defaultHeight = -1;
  }

  public final void be(int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.MMKeyboardUperView", "onLayoutChange h " + paramInt1 + "  oh " + paramInt2);
    if (this.defaultHeight == -1)
      this.defaultHeight = paramInt1;
    if (paramInt1 == this.defaultHeight)
    {
      this.grB.post(this.grD);
      return;
    }
    this.grB.post(this.grC);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.MMKeyboardUperView
 * JD-Core Version:    0.6.2
 */