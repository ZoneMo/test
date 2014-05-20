package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ca
  implements MenuItem.OnMenuItemClickListener
{
  ca(SettingsModifyEmailAddrUI paramSettingsModifyEmailAddrUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfu.SM();
    this.hfu.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ca
 * JD-Core Version:    0.6.2
 */