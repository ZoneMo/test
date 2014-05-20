package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class dn
  implements MenuItem.OnMenuItemClickListener
{
  dn(SettingsPersonalInfoUI paramSettingsPersonalInfoUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfL.SM();
    this.hfL.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.dn
 * JD-Core Version:    0.6.2
 */