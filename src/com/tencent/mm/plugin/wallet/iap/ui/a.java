package com.tencent.mm.plugin.wallet.iap.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class a
  implements DialogInterface.OnCancelListener
{
  a(WalletIapUI paramWalletIapUI)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.fac.setResult(0);
    this.fac.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.a
 * JD-Core Version:    0.6.2
 */