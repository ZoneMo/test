package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class gk
  implements MenuItem.OnMenuItemClickListener
{
  gk(RegByMobileRegAIOUI paramRegByMobileRegAIOUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gsL.SM();
    RegByMobileRegAIOUI.o(this.gsL);
    this.gsL.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.gk
 * JD-Core Version:    0.6.2
 */