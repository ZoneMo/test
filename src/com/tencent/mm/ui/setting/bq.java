package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class bq
  implements MenuItem.OnMenuItemClickListener
{
  bq(SettingsAliasUI paramSettingsAliasUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfi.SM();
    this.hfi.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bq
 * JD-Core Version:    0.6.2
 */