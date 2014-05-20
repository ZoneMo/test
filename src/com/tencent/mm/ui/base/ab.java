package com.tencent.mm.ui.base;

import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class ab
  implements View.OnTouchListener
{
  ab(MMAutoCompleteTextView paramMMAutoCompleteTextView)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    MMAutoCompleteTextView localMMAutoCompleteTextView = this.gyQ;
    if (localMMAutoCompleteTextView.getCompoundDrawables()[2] == null);
    while ((paramMotionEvent.getAction() != 1) || (paramMotionEvent.getX() <= localMMAutoCompleteTextView.getWidth() - localMMAutoCompleteTextView.getPaddingRight() - this.gyQ.gyP.getIntrinsicWidth()))
      return false;
    localMMAutoCompleteTextView.setText("");
    MMAutoCompleteTextView.a(this.gyQ);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.ab
 * JD-Core Version:    0.6.2
 */