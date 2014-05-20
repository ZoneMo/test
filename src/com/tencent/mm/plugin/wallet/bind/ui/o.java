package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import android.net.Uri;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.v;

final class o
  implements v
{
  o(WalletBankcardDetailUI paramWalletBankcardDetailUI)
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
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + this.eYh.getString(n.bFq)));
    this.eYh.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.o
 * JD-Core Version:    0.6.2
 */