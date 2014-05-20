package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.b;
import com.tencent.mm.sdk.platformtools.cj;

final class q
  implements View.OnClickListener
{
  q(WalletOrderInfoUI paramWalletOrderInfoUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!cj.hX(WalletOrderInfoUI.f(this.fbR)))
      b.Z(this.fbR, WalletOrderInfoUI.f(this.fbR));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.q
 * JD-Core Version:    0.6.2
 */