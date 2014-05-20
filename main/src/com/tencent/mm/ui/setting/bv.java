package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class bv
  implements MenuItem.OnMenuItemClickListener
{
  bv(SettingsChattingBackgroundUI paramSettingsChattingBackgroundUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hfl.SM();
    this.hfl.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.bv
 * JD-Core Version:    0.6.2
 */