package com.tencent.mm.plugin.chatroom.ui;

import android.view.View;
import com.tencent.mm.model.au;

final class q
  implements au
{
  q(RoomUpgradeUI paramRoomUpgradeUI, String paramString)
  {
  }

  public final void g(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
      RoomUpgradeUI.g(this.cWW).post(new r(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.q
 * JD-Core Version:    0.6.2
 */