package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.plugin.wallet.pay.ui.a;

final class s
  implements a
{
  s(WalletBindUI paramWalletBindUI)
  {
  }

  public final void a(Context paramContext, int paramInt, Intent paramIntent)
  {
    if (paramInt == -1)
      WalletBindUI.a(this.eYr, WalletBankcardManageUI.class);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.s
 * JD-Core Version:    0.6.2
 */