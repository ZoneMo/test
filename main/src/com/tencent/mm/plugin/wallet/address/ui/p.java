package com.tencent.mm.plugin.wallet.address.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class p
  implements MenuItem.OnMenuItemClickListener
{
  p(WalletSelectAddrUI paramWalletSelectAddrUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.eWB.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.p
 * JD-Core Version:    0.6.2
 */