package com.tencent.mm.plugin.wallet.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.i;

final class ah
  implements DialogInterface.OnClickListener
{
  ah(WalletBaseUI paramWalletBaseUI, i parami)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.feg.aoJ().putInt("key_err_code", -1003);
    this.feh.b(this.feg, this.feg.aoJ());
    if (this.feg.Vf())
      this.feg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.ah
 * JD-Core Version:    0.6.2
 */