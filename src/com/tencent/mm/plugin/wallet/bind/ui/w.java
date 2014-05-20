package com.tencent.mm.plugin.wallet.bind.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.i;
import com.tencent.mm.plugin.wallet.bind.model.ElementQuery;

final class w
  implements View.OnClickListener
{
  w(WalletCardElmentUI paramWalletCardElmentUI)
  {
  }

  public final void onClick(View paramView)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("key_support_bankcard", this.eZd.aoJ().getInt("key_support_bankcard", 3));
    localBundle.putString("key_bank_type", WalletCardElmentUI.a(this.eZd).eXo);
    localBundle.putInt("key_bankcard_type", WalletCardElmentUI.a(this.eZd).eXn);
    h.m(this.eZd).d(this.eZd, WalletCardSelectUI.class, localBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.w
 * JD-Core Version:    0.6.2
 */