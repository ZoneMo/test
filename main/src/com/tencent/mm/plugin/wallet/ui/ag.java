package com.tencent.mm.plugin.wallet.ui;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.wallet.b.h;

final class ag
  implements DialogInterface.OnClickListener
{
  ag(WalletBaseUI paramWalletBaseUI, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Activity localActivity = this.feg.aal();
    h.f(localActivity, null);
    if (this.feg.Vf())
      this.feg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.ag
 * JD-Core Version:    0.6.2
 */