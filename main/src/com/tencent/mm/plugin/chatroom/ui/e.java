package com.tencent.mm.plugin.chatroom.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class e
  implements MenuItem.OnMenuItemClickListener
{
  e(RoomAnnouncementUI paramRoomAnnouncementUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.cWz.setResult(0);
    this.cWz.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.e
 * JD-Core Version:    0.6.2
 */