package com.tencent.mm.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class eu
  implements MenuItem.OnMenuItemClickListener
{
  eu(RoomRightUI paramRoomRightUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gpl.SM();
    this.gpl.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.eu
 * JD-Core Version:    0.6.2
 */