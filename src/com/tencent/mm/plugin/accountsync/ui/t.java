package com.tencent.mm.plugin.accountsync.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class t
  implements MenuItem.OnMenuItemClickListener
{
  t(InviteRecommendChoiceUI paramInviteRecommendChoiceUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.cIH.SM();
    this.cIH.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.t
 * JD-Core Version:    0.6.2
 */