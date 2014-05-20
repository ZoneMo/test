package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.bind.ui.WalletCardElmentUI;
import com.tencent.mm.plugin.wallet.bind.ui.WalletInputCardIDUI;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.l;
import com.tencent.mm.plugin.wallet.pay.ui.WalletVerifyCodeUI;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.pwd.a.d;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletForgotPwdUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletPwdConfirmUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletSetPasswordUI;
import com.tencent.mm.sdk.platformtools.aa;

public class e extends b
{
  public final i a(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "start Process : ForgotPwdProcess");
    b(paramActivity, WalletForgotPwdUI.class, paramBundle);
    return this;
  }

  public final a a(l paraml, Orders paramOrders)
  {
    paraml.flag = "3";
    return new com.tencent.mm.plugin.wallet.pwd.a.e(paraml);
  }

  public final a a(Authen paramAuthen, Orders paramOrders)
  {
    if (!anN());
    for (paramAuthen.bOY = 1; ; paramAuthen.bOY = 4)
      return new d(paramAuthen);
  }

  public final boolean a(a parama)
  {
    if (parama == null)
      return false;
    return parama instanceof com.tencent.mm.plugin.wallet.pwd.a.e;
  }

  public final void b(Activity paramActivity, Bundle paramBundle)
  {
    if ((paramActivity instanceof WalletForgotPwdUI))
      b(paramActivity, WalletCardElmentUI.class, paramBundle);
    do
    {
      return;
      if ((paramActivity instanceof WalletCardElmentUI))
      {
        if (!anN())
        {
          b(paramActivity, WalletVerifyCodeUI.class, paramBundle);
          return;
        }
        b(paramActivity, WalletSetPasswordUI.class, paramBundle);
        return;
      }
      if ((paramActivity instanceof WalletVerifyCodeUI))
      {
        b(paramActivity, WalletSetPasswordUI.class, paramBundle);
        return;
      }
      if ((paramActivity instanceof WalletSetPasswordUI))
      {
        b(paramActivity, WalletPwdConfirmUI.class, paramBundle);
        return;
      }
      if ((paramActivity instanceof WalletPwdConfirmUI))
      {
        c(paramActivity, paramBundle);
        return;
      }
    }
    while (!(paramActivity instanceof WalletInputCardIDUI));
    c(paramActivity, WalletCardElmentUI.class, paramBundle);
  }

  public final void c(Activity paramActivity, Bundle paramBundle)
  {
    a(paramActivity, WalletForgotPwdUI.class, paramBundle);
  }

  public final boolean d(Activity paramActivity, Bundle paramBundle)
  {
    return paramActivity instanceof WalletPwdConfirmUI;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.e
 * JD-Core Version:    0.6.2
 */