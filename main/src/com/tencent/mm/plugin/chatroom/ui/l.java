package com.tencent.mm.plugin.chatroom.ui;

import android.view.View;
import com.tencent.mm.model.au;

final class l
  implements au
{
  l(RoomUpgradeResultUI paramRoomUpgradeResultUI, String paramString)
  {
  }

  public final void g(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
      RoomUpgradeResultUI.b(this.cWM).post(new m(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.l
 * JD-Core Version:    0.6.2
 */