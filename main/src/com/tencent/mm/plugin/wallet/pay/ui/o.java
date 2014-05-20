package com.tencent.mm.plugin.wallet.pay.ui;

import android.widget.CheckBox;
import com.tencent.mm.pluginsdk.ui.applet.f;
import com.tencent.mm.sdk.platformtools.aa;

final class o
  implements f
{
  o(WalletOrderInfoUI paramWalletOrderInfoUI)
  {
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    aa.d("MicroMsg.WalletOrderInfoUI", "canAddContact" + paramBoolean1);
    if (paramBoolean1)
    {
      WalletOrderInfoUI.a(this.fbR).setChecked(true);
      return;
    }
    WalletOrderInfoUI.a(this.fbR).setChecked(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.o
 * JD-Core Version:    0.6.2
 */