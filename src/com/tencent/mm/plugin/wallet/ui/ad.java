package com.tencent.mm.plugin.wallet.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.plugin.wallet.b.e;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.c.c;

final class ad
  implements DialogInterface.OnClickListener
{
  ad(WalletBaseUI paramWalletBaseUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    h.a(this.feg.aal(), e.class, c.anX().aoe());
    if (this.feg.Vf())
      this.feg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.ad
 * JD-Core Version:    0.6.2
 */