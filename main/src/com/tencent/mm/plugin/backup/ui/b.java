package com.tencent.mm.plugin.backup.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class b
  implements MenuItem.OnMenuItemClickListener
{
  b(BakChatInputCryptUI paramBakChatInputCryptUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.cLS.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.b
 * JD-Core Version:    0.6.2
 */