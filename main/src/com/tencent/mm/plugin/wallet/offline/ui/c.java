package com.tencent.mm.plugin.wallet.offline.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class c
  implements View.OnClickListener
{
  c(WalletOfflineQRCodePayUI paramWalletOfflineQRCodePayUI)
  {
  }

  public final void onClick(View paramView)
  {
    long l = System.currentTimeMillis();
    if (l - WalletOfflineQRCodePayUI.b(this.faN) >= 200L)
    {
      WalletOfflineQRCodePayUI.c(this.faN);
      WalletOfflineQRCodePayUI.d(this.faN);
      WalletOfflineQRCodePayUI.a(this.faN, l);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.offline.ui.c
 * JD-Core Version:    0.6.2
 */