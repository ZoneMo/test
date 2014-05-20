package com.tencent.mm.plugin.wallet.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.h;

final class u
  implements DialogInterface.OnClickListener
{
  u(WalletBaseUI paramWalletBaseUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (WalletBaseUI.f(this.feg) == 1000)
      switch (WalletBaseUI.g(this.feg))
      {
      case 2:
      default:
        this.feg.aoA();
      case 3:
      case 1:
      }
    while (true)
    {
      WalletBaseUI.c(this.feg);
      WalletBaseUI.d(this.feg);
      WalletBaseUI.e(this.feg);
      return;
      Activity localActivity = this.feg.aal();
      Bundle localBundle = this.feg.aoJ();
      WalletBaseUI.g(this.feg);
      h.f(localActivity, localBundle);
      continue;
      if (!this.feg.Vh())
        this.feg.gI(0);
      this.feg.aoA();
      continue;
      h.d(this.feg.aal(), WalletBaseUI.g(this.feg));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.u
 * JD-Core Version:    0.6.2
 */