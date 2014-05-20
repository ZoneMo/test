package com.tencent.mm.ui.player;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class c
  implements MenuItem.OnMenuItemClickListener
{
  c(MusicDetailUI paramMusicDetailUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hdb.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.c
 * JD-Core Version:    0.6.2
 */