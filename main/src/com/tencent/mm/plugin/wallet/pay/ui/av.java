package com.tencent.mm.plugin.wallet.pay.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.h;

final class av
  implements View.OnClickListener
{
  av(WalletVerifyCodeUI paramWalletVerifyCodeUI)
  {
  }

  public final void onClick(View paramView)
  {
    h.a(this.fcR, this.fcR.getString(n.bHd), "", this.fcR.getString(n.bHc), this.fcR.getString(n.bds), new aw(this), null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.av
 * JD-Core Version:    0.6.2
 */