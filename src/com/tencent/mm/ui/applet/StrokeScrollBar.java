package com.tencent.mm.ui.applet;

import android.content.Context;
import android.util.AttributeSet;
import com.tencent.mm.ui.base.VerticalScrollBar;

public class StrokeScrollBar extends VerticalScrollBar
{
  public StrokeScrollBar(Context paramContext)
  {
    super(paramContext);
  }

  public StrokeScrollBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected final void aGw()
  {
    this.gEW = new String[18];
    for (int i = 0; i < this.gEW.length; i++)
      this.gEW[i] = (Integer.toString(i + 3) + "劃");
    this.gEU = 2.0F;
    this.gEV = 79;
  }

  protected final int aGx()
  {
    return 2130903709;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.StrokeScrollBar
 * JD-Core Version:    0.6.2
 */