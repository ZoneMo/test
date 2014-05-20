package com.tencent.mm.ui.tools;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class dp
  implements MenuItem.OnMenuItemClickListener
{
  dp(MMTextInputUI paramMMTextInputUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    MMTextInputUI.a(this.hlx);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dp
 * JD-Core Version:    0.6.2
 */