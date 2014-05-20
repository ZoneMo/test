package com.tencent.mm.plugin.wallet.bind.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class ab
  implements View.OnClickListener
{
  ab(WalletCardElmentUI paramWalletCardElmentUI)
  {
  }

  public final void onClick(View paramView)
  {
    this.eZd.startActivityForResult(new Intent("com.tencent.mm.action.GET_ADRESS").putExtra("GetAddress", true), 2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.ab
 * JD-Core Version:    0.6.2
 */