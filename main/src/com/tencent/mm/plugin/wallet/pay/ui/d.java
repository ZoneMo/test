package com.tencent.mm.plugin.wallet.pay.ui;

import android.app.Dialog;

final class d
  implements com.tencent.mm.plugin.wallet.c.d
{
  d(WalletBrandUI paramWalletBrandUI)
  {
  }

  public final void close()
  {
    if (WalletBrandUI.a(this.fbz) != null)
    {
      WalletBrandUI.a(this.fbz).dismiss();
      WalletBrandUI.b(this.fbz);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.d
 * JD-Core Version:    0.6.2
 */