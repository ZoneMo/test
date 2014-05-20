package com.tencent.mm.plugin.wallet.bind.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.n;
import com.tencent.mm.plugin.wallet.bind.model.f;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.ui.base.h;

final class bd
  implements View.OnClickListener
{
  bd(WalletInputCardIDUI paramWalletInputCardIDUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (WalletInputCardIDUI.a(this.eZF))
    {
      f localf = new f(WalletInputCardIDUI.b(this.eZF).getText(), this.eZF.aoK());
      this.eZF.l(localf);
      return;
    }
    h.c(this.eZF, n.bGt, n.ber);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.bd
 * JD-Core Version:    0.6.2
 */