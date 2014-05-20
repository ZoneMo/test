package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class kz
  implements MenuItem.OnMenuItemClickListener
{
  kz(ShowNonWeixinFriendUI paramShowNonWeixinFriendUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gux.SM();
    this.gux.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.kz
 * JD-Core Version:    0.6.2
 */