package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class df
  implements MenuItem.OnMenuItemClickListener
{
  df(SettingsModifyPasswordUI paramSettingsModifyPasswordUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfG.SM();
    this.hfG.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.df
 * JD-Core Version:    0.6.2
 */