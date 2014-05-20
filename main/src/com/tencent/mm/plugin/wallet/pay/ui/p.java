package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.ui.base.v;

final class p
  implements v
{
  p(WalletOrderInfoUI paramWalletOrderInfoUI)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + WalletOrderInfoUI.b(this.fbR)));
    this.fbR.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.p
 * JD-Core Version:    0.6.2
 */