package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class hz
  implements MenuItem.OnMenuItemClickListener
{
  hz(RegByMobileVoiceVerifySelectUI paramRegByMobileVoiceVerifySelectUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gta.SM();
    this.gta.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hz
 * JD-Core Version:    0.6.2
 */