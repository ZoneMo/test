package com.tencent.mm.plugin.wallet.bind.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.e.b;
import com.tencent.mm.plugin.wallet.pay.model.e;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class bg
  implements View.OnClickListener
{
  bg(WalletResetInfoUI paramWalletResetInfoUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!WalletResetInfoUI.a(this.eZK))
    {
      aa.w("Micromsg.WalletResetInfoUI", "input format illegal!");
      return;
    }
    switch (this.eZK.aoJ().getInt("key_err_code", 408))
    {
    default:
      WalletResetInfoUI.b(this.eZK).fdh = cj.R(WalletResetInfoUI.e(this.eZK).getText(), "");
      String str = b.pQ(WalletResetInfoUI.b(this.eZK).fdh);
      this.eZK.aoJ().putString("key_mobile", str);
    case 402:
    case 403:
    }
    while (true)
    {
      WalletResetInfoUI.b(this.eZK).fdd = 1;
      this.eZK.l(new e(WalletResetInfoUI.b(this.eZK), WalletResetInfoUI.f(this.eZK)));
      return;
      WalletResetInfoUI.b(this.eZK).eWR = WalletResetInfoUI.c(this.eZK).getText();
      continue;
      WalletResetInfoUI.b(this.eZK).fdj = cj.R(WalletResetInfoUI.d(this.eZK).getText(), "");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.bg
 * JD-Core Version:    0.6.2
 */