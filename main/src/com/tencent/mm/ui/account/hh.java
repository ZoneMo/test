package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class hh
  implements MenuItem.OnMenuItemClickListener
{
  hh(RegByMobileRegUI paramRegByMobileRegUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gsP.SM();
    RegByMobileRegUI.l(this.gsP);
    this.gsP.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hh
 * JD-Core Version:    0.6.2
 */