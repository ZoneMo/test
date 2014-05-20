package com.tencent.mm.ui.contact;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.ui.voicesearch.j;

final class dj
  implements View.OnTouchListener
{
  dj(SelectContactUI paramSelectContactUI)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    }
    while (true)
    {
      if (SelectContactUI.b(this.gVn) != null)
        SelectContactUI.b(this.gVn).onTouchEvent(paramMotionEvent);
      if (SelectContactUI.j(this.gVn) != null)
        SelectContactUI.j(this.gVn).onTouchEvent(paramMotionEvent);
      return false;
      this.gVn.SM();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dj
 * JD-Core Version:    0.6.2
 */