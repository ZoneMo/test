package android.support.v7.internal.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class ah
  implements View.OnTouchListener
{
  private ah(ListPopupWindow paramListPopupWindow)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (ListPopupWindow.b(this.oK) != null) && (ListPopupWindow.b(this.oK).isShowing()) && (j >= 0) && (j < ListPopupWindow.b(this.oK).getWidth()) && (k >= 0) && (k < ListPopupWindow.b(this.oK).getHeight()))
      ListPopupWindow.d(this.oK).postDelayed(ListPopupWindow.c(this.oK), 250L);
    while (true)
    {
      return false;
      if (i == 1)
        ListPopupWindow.d(this.oK).removeCallbacks(ListPopupWindow.c(this.oK));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ah
 * JD-Core Version:    0.6.2
 */