package com.tencent.mm.ui.base;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class bt
  implements View.OnTouchListener
{
  private bt(MMListPopupWindow paramMMListPopupWindow)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (MMListPopupWindow.b(this.gAy) != null) && (MMListPopupWindow.b(this.gAy).isShowing()) && (j >= 0) && (j < MMListPopupWindow.b(this.gAy).getWidth()) && (k >= 0) && (k < MMListPopupWindow.b(this.gAy).getHeight()))
      MMListPopupWindow.d(this.gAy).postDelayed(MMListPopupWindow.c(this.gAy), 250L);
    while (true)
    {
      return false;
      if (i == 1)
        MMListPopupWindow.d(this.gAy).removeCallbacks(MMListPopupWindow.c(this.gAy));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bt
 * JD-Core Version:    0.6.2
 */