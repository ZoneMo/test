package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class hx
  implements MenuItem.OnMenuItemClickListener
{
  hx(RegByMobileSetNickUI paramRegByMobileSetNickUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.gsU.SM();
    this.gsU.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.hx
 * JD-Core Version:    0.6.2
 */