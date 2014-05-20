package com.tencent.mm.ui.contact;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.ui.voicesearch.j;

final class be
  implements View.OnTouchListener
{
  be(ChatroomContactUI paramChatroomContactUI)
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
      if (ChatroomContactUI.e(this.gTl) != null)
        ChatroomContactUI.e(this.gTl).onTouchEvent(paramMotionEvent);
      if (ChatroomContactUI.c(this.gTl) != null)
        ChatroomContactUI.c(this.gTl).onTouchEvent(paramMotionEvent);
      return false;
      this.gTl.SM();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.be
 * JD-Core Version:    0.6.2
 */