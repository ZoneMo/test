package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.g;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.order.model.Orders;

final class aj
  implements DialogInterface.OnClickListener
{
  aj(WalletPayUI paramWalletPayUI, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = this.fcv.aoJ();
    localBundle.putInt("key_main_bankcard_state", this.fcy);
    localBundle.putParcelable("key_orders", WalletPayUI.f(this.fcv));
    localBundle.putParcelable("key_pay_info", WalletPayUI.i(this.fcv));
    localBundle.putParcelable("key_authen", WalletPayUI.e(this.fcv));
    localBundle.putString("key_pwd1", WalletPayUI.j(this.fcv));
    localBundle.putInt("key_pay_flag", 3);
    localBundle.putInt("key_err_code", -1004);
    h.a(this.fcv, g.class, localBundle, WalletPayUI.f(this.fcv).eWV, WalletPayUI.k(this.fcv));
    if (this.fcv.Vf())
      this.fcv.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.aj
 * JD-Core Version:    0.6.2
 */