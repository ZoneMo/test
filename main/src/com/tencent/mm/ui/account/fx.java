package com.tencent.mm.ui.account;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class fx
  implements MenuItem.OnMenuItemClickListener
{
  fx(RegByEmailUI paramRegByEmailUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    RegByEmailUI.c(this.gsr);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.fx
 * JD-Core Version:    0.6.2
 */