package com.tencent.mm.ui.player;

import android.app.Activity;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.ui.base.h;

final class f
  implements MenuItem.OnMenuItemClickListener
{
  f(MusicDetailUI paramMusicDetailUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    Activity localActivity = this.hdb.aal();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.hdb.getString(2131167820);
    h.c(localActivity, "", arrayOfString, "", new g(this));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.player.f
 * JD-Core Version:    0.6.2
 */