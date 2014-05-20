package com.tencent.mm.ui.base;

import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class am
  implements View.OnTouchListener
{
  am(MMClearEditText paramMMClearEditText)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    MMClearEditText localMMClearEditText = this.gzk;
    if (localMMClearEditText.getCompoundDrawables()[2] == null);
    while ((paramMotionEvent.getAction() != 1) || (paramMotionEvent.getX() <= localMMClearEditText.getWidth() - localMMClearEditText.getPaddingRight() - this.gzk.gyP.getIntrinsicWidth()))
      return false;
    localMMClearEditText.setText("");
    MMClearEditText.a(this.gzk);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.am
 * JD-Core Version:    0.6.2
 */