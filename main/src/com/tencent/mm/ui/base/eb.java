package com.tencent.mm.ui.base;

import android.view.View;
import android.view.View.OnClickListener;

final class eb
  implements View.OnClickListener
{
  eb(TalkRoomPopupNav paramTalkRoomPopupNav)
  {
  }

  public final void onClick(View paramView)
  {
    TalkRoomPopupNav.b(this.gET);
    if (TalkRoomPopupNav.a(this.gET) != null)
      TalkRoomPopupNav.a(this.gET).aHT();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.eb
 * JD-Core Version:    0.6.2
 */