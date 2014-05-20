package com.tencent.mm.plugin.wallet.bind.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.i;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;
import com.tencent.mm.plugin.wallet.ui.aj;

final class ah
  implements View.OnClickListener
{
  ah(WalletCardImportUI paramWalletCardImportUI)
  {
  }

  public final void onClick(View paramView)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("key_support_bankcard", this.eZk.aoJ().getInt("key_support_bankcard", 3));
    localBundle.putString("key_bank_type", WalletCardImportUI.c(this.eZk).eXo);
    localBundle.putInt("key_bankcard_type", WalletCardImportUI.c(this.eZk).eXn);
    h.m(this.eZk).d(this.eZk, aj.class, localBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ah
 * JD-Core Version:    0.6.2
 */