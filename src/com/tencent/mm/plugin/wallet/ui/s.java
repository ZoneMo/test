package com.tencent.mm.plugin.wallet.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.wallet.b.i;

final class s
  implements DialogInterface.OnClickListener
{
  s(WalletBaseUI paramWalletBaseUI, i parami)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.feh.c(this.feg, this.feg.aoJ());
    if (this.feg.Vf())
      this.feg.finish();
    WalletBaseUI.c(this.feg);
    WalletBaseUI.d(this.feg);
    WalletBaseUI.e(this.feg);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.s
 * JD-Core Version:    0.6.2
 */