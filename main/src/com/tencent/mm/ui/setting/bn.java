package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class bn
  implements MenuItem.OnMenuItemClickListener
{
  bn(SettingsActiveTimeUI paramSettingsActiveTimeUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfe.SM();
    this.hfe.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bn
 * JD-Core Version:    0.6.2
 */