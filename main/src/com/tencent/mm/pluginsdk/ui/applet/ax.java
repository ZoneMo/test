package com.tencent.mm.pluginsdk.ui.applet;

import android.text.TextPaint;
import android.view.View;
import com.tencent.mm.pluginsdk.af;

public final class ax extends av
{
  private int bgColor;
  private am fpc;
  private af fpd;
  private int linkColor;

  public ax(am paramam, af paramaf)
  {
    this.fpc = paramam;
    this.fpd = paramaf;
    this.linkColor = -11048043;
    this.bgColor = -3355962;
  }

  public final void onClick(View paramView)
  {
    if (this.fpd != null)
      this.fpd.a(this.fpc);
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setColor(this.linkColor);
    if (asg())
    {
      paramTextPaint.bgColor = this.bgColor;
      return;
    }
    paramTextPaint.bgColor = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.ax
 * JD-Core Version:    0.6.2
 */