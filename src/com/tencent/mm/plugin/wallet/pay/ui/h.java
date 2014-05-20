package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class h
  implements DialogInterface.OnClickListener
{
  h(WalletChangeBankcardUI paramWalletChangeBankcardUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    WalletChangeBankcardUI.f(this.fbJ);
    if (WalletChangeBankcardUI.g(this.fbJ))
      this.fbJ.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.h
 * JD-Core Version:    0.6.2
 */