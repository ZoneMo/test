package com.tencent.mm.ui.account;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.plugin.accountsync.ui.InviteFacebookFriendsUI;

final class ap
  implements MenuItem.OnMenuItemClickListener
{
  ap(FacebookFriendUI paramFacebookFriendUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gpZ.startActivity(new Intent(this.gpZ, InviteFacebookFriendsUI.class));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ap
 * JD-Core Version:    0.6.2
 */