package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class dl
  implements MenuItem.OnMenuItemClickListener
{
  dl(SettingsNotificationUI paramSettingsNotificationUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfK.SM();
    this.hfK.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dl
 * JD-Core Version:    0.6.2
 */