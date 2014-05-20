package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.wallet.b.d;
import com.tencent.mm.plugin.wallet.b.e;
import com.tencent.mm.plugin.wallet.b.i;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.l;
import com.tencent.mm.plugin.wallet.pwd.a.a;
import com.tencent.mm.plugin.wallet.pwd.a.c;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.sdk.platformtools.aa;

final class f
  implements View.OnClickListener
{
  f(WalletPwdConfirmUI paramWalletPwdConfirmUI)
  {
  }

  public final void onClick(View paramView)
  {
    String str1 = this.fdE.aoJ().getString("key_new_pwd1");
    String str2 = WalletPwdConfirmUI.a(this.fdE).get3DesEncrptData();
    String str3 = this.fdE.aoJ().getString("kreq_token");
    String str4 = this.fdE.aoJ().getString("Kvertify_code");
    aa.d("Micromsg.WalletPwdConfirmUI", "mPayInfo " + WalletPwdConfirmUI.b(this.fdE) + " vertifyCode: " + str4);
    if ((str1 != null) && (str1.equals(str2)))
    {
      l locall = new l();
      locall.fbq = WalletPwdConfirmUI.a(this.fdE).getText();
      locall.dHN = WalletPwdConfirmUI.b(this.fdE);
      locall.etE = str3;
      locall.fbr = str4;
      i locali = com.tencent.mm.plugin.wallet.b.h.m(this.fdE);
      if (!locali.anN())
      {
        locall.flag = "1";
        if (!(locali instanceof d))
          break label210;
        this.fdE.l(new com.tencent.mm.plugin.wallet.pwd.a.f(locall));
      }
      label210: 
      do
      {
        return;
        locall.flag = "4";
        break;
        if (locali.anP())
        {
          Orders localOrders = (Orders)this.fdE.aoJ().getParcelable("key_orders");
          this.fdE.l(new com.tencent.mm.plugin.wallet.pay.model.h(locall, localOrders));
          return;
        }
        if ((locali instanceof com.tencent.mm.plugin.wallet.b.f))
        {
          String str5 = this.fdE.aoJ().getString("key_pwd1");
          this.fdE.l(new a(str5, locall.fbq));
          return;
        }
      }
      while (!(locali instanceof e));
      this.fdE.l(new c(locall));
      return;
    }
    com.tencent.mm.plugin.wallet.b.h.d(this.fdE, -1002);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.f
 * JD-Core Version:    0.6.2
 */