package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ds
  implements MenuItem.OnMenuItemClickListener
{
  ds(SettingsPluginsNotifyUI paramSettingsPluginsNotifyUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfM.SM();
    this.hfM.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ds
 * JD-Core Version:    0.6.2
 */