package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class ai
  implements MenuItem.OnMenuItemClickListener
{
  ai(SettingDeleteAccountInputPassUI paramSettingDeleteAccountInputPassUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hep.SM();
    this.hep.startActivity(new Intent(this.hep, SettingDeleteAccountUI.class));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.ai
 * JD-Core Version:    0.6.2
 */