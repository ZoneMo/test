package com.tencent.mm.plugin.scanner.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View.OnClickListener;

final class h
  implements MenuItem.OnMenuItemClickListener
{
  h(BaseScanUI paramBaseScanUI, View.OnClickListener paramOnClickListener)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (this.ecx != null)
      this.ecx.onClick(null);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.h
 * JD-Core Version:    0.6.2
 */