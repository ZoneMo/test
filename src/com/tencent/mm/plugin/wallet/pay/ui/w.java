package com.tencent.mm.plugin.wallet.pay.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.g;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.order.model.Orders;

final class w
  implements DialogInterface.OnClickListener
{
  w(WalletPayUI paramWalletPayUI)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    WalletPayUI.l(this.fcv).putInt("key_pay_flag", 3);
    h.a(this.fcv, g.class, WalletPayUI.l(this.fcv), WalletPayUI.f(this.fcv).eWV, WalletPayUI.k(this.fcv));
    if (this.fcv.Vf())
      this.fcv.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.w
 * JD-Core Version:    0.6.2
 */