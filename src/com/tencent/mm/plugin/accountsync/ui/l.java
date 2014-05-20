package com.tencent.mm.plugin.accountsync.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class l
  implements MenuItem.OnMenuItemClickListener
{
  l(InviteFacebookFriendsUI paramInviteFacebookFriendsUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.cIu.SM();
    this.cIu.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.l
 * JD-Core Version:    0.6.2
 */