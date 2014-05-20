package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.tencent.mm.h;

final class ad
  implements View.OnClickListener
{
  ad(WalletPayUI paramWalletPayUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (WalletPayUI.a(this.fcv))
    {
      WalletPayUI.b(this.fcv).setImageResource(h.agQ);
      WalletPayUI.a(this.fcv, false);
    }
    while (true)
    {
      WalletPayUI.c(this.fcv).notifyDataSetChanged();
      return;
      WalletPayUI.b(this.fcv).setImageResource(h.agR);
      WalletPayUI.a(this.fcv, true);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.ad
 * JD-Core Version:    0.6.2
 */