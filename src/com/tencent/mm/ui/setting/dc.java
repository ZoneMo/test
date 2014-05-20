package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class dc
  implements MenuItem.OnMenuItemClickListener
{
  dc(SettingsModifyNameUI paramSettingsModifyNameUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfB.SM();
    this.hfB.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dc
 * JD-Core Version:    0.6.2
 */