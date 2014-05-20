package com.tencent.mm.ui.friend;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.modelfriend.p;

final class aw
  implements View.OnTouchListener
{
  aw(FindMContactInviteUI paramFindMContactInviteUI)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (FindMContactInviteUI.b(this.hbp) != null)
      FindMContactInviteUI.b(this.hbp).onTouchEvent(paramMotionEvent);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.aw
 * JD-Core Version:    0.6.2
 */