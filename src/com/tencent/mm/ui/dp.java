package com.tencent.mm.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class dp
  implements MenuItem.OnMenuItemClickListener
{
  dp(RoomInfoDetailUI paramRoomInfoDetailUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.goM.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.dp
 * JD-Core Version:    0.6.2
 */