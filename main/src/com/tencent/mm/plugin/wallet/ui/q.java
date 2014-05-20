package com.tencent.mm.plugin.wallet.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.i;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;

final class q
  implements DialogInterface.OnClickListener
{
  q(WalletBaseUI paramWalletBaseUI, i parami)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bankcard localBankcard = (Bankcard)this.feg.aoJ().getParcelable("key_bankcard");
    PayInfo localPayInfo = (PayInfo)this.feg.aoJ().getParcelable("key_pay_info");
    if ((localBankcard != null) && (localPayInfo != null))
      localBankcard.eWX = localPayInfo.faP;
    this.feg.aoJ().putInt("key_err_code", -1004);
    this.feh.b(this.feg, this.feg.aoJ());
    if (this.feg.Vf())
      this.feg.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.ui.q
 * JD-Core Version:    0.6.2
 */