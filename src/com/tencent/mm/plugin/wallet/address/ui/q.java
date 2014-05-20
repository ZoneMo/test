package com.tencent.mm.plugin.wallet.address.ui;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.wallet.address.model.d;

final class q
  implements MenuItem.OnMenuItemClickListener
{
  q(WalletSelectAddrUI paramWalletSelectAddrUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if ((WalletSelectAddrUI.d(this.eWB) != null) && (WalletSelectAddrUI.d(this.eWB).id != 0))
    {
      d locald = new d(WalletSelectAddrUI.d(this.eWB).id);
      WalletSelectAddrUI.a(this.eWB, com.tencent.mm.plugin.wallet.e.b.a(this.eWB.aal(), false, new r(this)));
      be.uA().d(locald);
    }
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.q
 * JD-Core Version:    0.6.2
 */