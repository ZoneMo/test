package com.tencent.mm.plugin.chatroom.ui;

import android.content.Intent;

final class a
  implements Runnable
{
  a(RoomAlphaProcessUI paramRoomAlphaProcessUI, boolean paramBoolean, int paramInt)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent(this.cWv, RoomUpgradeUI.class);
    localIntent.setFlags(603979776);
    localIntent.putExtra("room_name", RoomAlphaProcessUI.a(this.cWv));
    localIntent.putExtra("upgrade_success", this.cWt);
    localIntent.putExtra("left_quota", this.cWu);
    this.cWv.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.chatroom.ui.a
 * JD-Core Version:    0.6.2
 */