package com.tencent.mm.plugin.wallet.address.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class a
  implements View.OnClickListener
{
  a(WalletAddAddressUI paramWalletAddAddressUI)
  {
  }

  public final void onClick(View paramView)
  {
    this.eWo.startActivityForResult(new Intent(this.eWo, WalletMultiRcptSelectUI.class), 1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.address.ui.a
 * JD-Core Version:    0.6.2
 */