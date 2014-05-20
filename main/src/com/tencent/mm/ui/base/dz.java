package com.tencent.mm.ui.base;

import android.view.View;
import android.view.View.OnClickListener;

final class dz
  implements View.OnClickListener
{
  dz(TalkRoomPopupNav paramTalkRoomPopupNav)
  {
  }

  public final void onClick(View paramView)
  {
    if (TalkRoomPopupNav.a(this.gET) != null)
      TalkRoomPopupNav.a(this.gET).aHS();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.dz
 * JD-Core Version:    0.6.2
 */