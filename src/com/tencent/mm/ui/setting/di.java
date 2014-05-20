package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class di
  implements MenuItem.OnMenuItemClickListener
{
  di(SettingsNetStatUI paramSettingsNetStatUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    SettingsNetStatUI.a(this.hfJ);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.di
 * JD-Core Version:    0.6.2
 */