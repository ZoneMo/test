package com.tencent.mm.plugin.wallet.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.i;

final class af
  implements DialogInterface.OnClickListener
{
  af(WalletBaseUI paramWalletBaseUI, int paramInt, i parami)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.feg.aoJ().putInt("key_pay_flag", 3);
    this.feg.aoJ().putInt("key_err_code", this.cmz);
    this.feh.b(this.feg, this.feg.aoJ());
    if (this.feg.Vf())
      this.feg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.af
 * JD-Core Version:    0.6.2
 */