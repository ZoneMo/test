package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class ec
  implements View.OnTouchListener
{
  ec(MaskImageButton paramMaskImageButton)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 2:
    default:
    case 0:
    case 1:
    case 3:
    }
    while ((!this.hlE.isClickable()) && (!this.hlE.isLongClickable()))
    {
      return true;
      paramView.setPressed(true);
      paramView.invalidate();
      MaskImageButton.b(this.hlE).removeCallbacks(MaskImageButton.a(this.hlE));
      continue;
      MaskImageButton.b(this.hlE).post(MaskImageButton.a(this.hlE));
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ec
 * JD-Core Version:    0.6.2
 */