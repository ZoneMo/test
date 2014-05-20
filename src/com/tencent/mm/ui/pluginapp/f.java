package com.tencent.mm.ui.pluginapp;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class f
  implements View.OnTouchListener
{
  f(ContactSearchResultUI paramContactSearchResultUI)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (ContactSearchResultUI.b(this.hdh) != null)
      ContactSearchResultUI.b(this.hdh).onTouchEvent(paramMotionEvent);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.pluginapp.f
 * JD-Core Version:    0.6.2
 */