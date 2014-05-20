package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ag
  implements DialogInterface.OnClickListener
{
  ag(WalletPayUI paramWalletPayUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    WalletPayUI.a(this.fcv, null);
    WalletPayUI.g(this.fcv);
    if (this.fcv.Vf())
      this.fcv.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.ag
 * JD-Core Version:    0.6.2
 */