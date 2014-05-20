package com.tencent.mm.ui.contact;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.ui.MMActivity;

final class au
  implements View.OnTouchListener
{
  au(ChatroomContactEntranceView paramChatroomContactEntranceView)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((ChatroomContactEntranceView.a(this.gTi) instanceof MMActivity))
      ((MMActivity)ChatroomContactEntranceView.a(this.gTi)).SM();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.au
 * JD-Core Version:    0.6.2
 */