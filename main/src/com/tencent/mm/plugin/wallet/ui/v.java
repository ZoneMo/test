package com.tencent.mm.plugin.wallet.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.i;

final class v
  implements DialogInterface.OnClickListener
{
  v(WalletBaseUI paramWalletBaseUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.feg.aoM();
    i locali = h.m(this.feg);
    if (locali != null)
    {
      locali.c(this.feg, this.feg.aoJ());
      return;
    }
    this.feg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.v
 * JD-Core Version:    0.6.2
 */