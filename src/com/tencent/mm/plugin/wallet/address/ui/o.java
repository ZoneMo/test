package com.tencent.mm.plugin.wallet.address.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class o
  implements View.OnClickListener
{
  o(WalletSelectAddrUI paramWalletSelectAddrUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.eWB, WalletAddAddressUI.class);
    this.eWB.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.o
 * JD-Core Version:    0.6.2
 */