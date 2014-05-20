package com.tencent.mm.plugin.chatroom.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class o
  implements View.OnClickListener
{
  o(RoomUpgradeUI paramRoomUpgradeUI)
  {
  }

  public final void onClick(View paramView)
  {
    switch (RoomUpgradeUI.a(this.cWW))
    {
    case 3:
    case 4:
    default:
      return;
    case 1:
      if (RoomUpgradeUI.b(this.cWW))
      {
        f.a(this.cWW, RoomUpgradeUI.c(this.cWW), true);
        return;
      }
      RoomUpgradeUI.a(this.cWW, true);
      return;
    case 2:
    case 5:
    }
    if (RoomUpgradeUI.b(this.cWW))
    {
      RoomUpgradeUI.d(this.cWW);
      return;
    }
    RoomUpgradeUI.a(this.cWW, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.o
 * JD-Core Version:    0.6.2
 */