package com.tencent.mm.plugin.safedevice.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class h
  implements MenuItem.OnMenuItemClickListener
{
  h(MySafeDeviceListUI paramMySafeDeviceListUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    MySafeDeviceListUI.a(this.ean);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.h
 * JD-Core Version:    0.6.2
 */