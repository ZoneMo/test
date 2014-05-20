package com.tencent.mm.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class u
  implements MenuItem.OnMenuItemClickListener
{
  u(ExposeUI paramExposeUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (ExposeUI.b(this.gln))
      ExposeUI.c(this.gln);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.u
 * JD-Core Version:    0.6.2
 */