package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.wallet.bind.ui.WalletCardElmentUI;
import com.tencent.mm.plugin.wallet.bind.ui.WalletInputCardIDUI;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.d;
import com.tencent.mm.plugin.wallet.pay.model.l;
import com.tencent.mm.plugin.wallet.pay.ui.WalletOrderInfoUI;
import com.tencent.mm.plugin.wallet.pay.ui.WalletVerifyCodeUI;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletPwdConfirmUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletSetPasswordUI;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public abstract class b extends i
{
  public i a(Activity paramActivity, Bundle paramBundle)
  {
    b(paramActivity, WalletInputCardIDUI.class, paramBundle);
    return this;
  }

  public abstract a a(l paraml, Orders paramOrders);

  public abstract a a(Authen paramAuthen, Orders paramOrders);

  public final void a(Activity paramActivity, Class paramClass, Bundle paramBundle)
  {
    super.a(paramActivity, paramClass, paramBundle);
  }

  public abstract boolean a(a parama);

  protected final boolean anJ()
  {
    String str = anL().getString("key_bank_username");
    aa.d("MicroMsg.ProcessActivityMgr", "follow bank account : isFollow " + anL().getBoolean("key_is_follow_bank_username", false) + ", username : " + str);
    boolean bool1 = anL().getBoolean("key_is_follow_bank_username", false);
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = cj.hX(str);
      bool2 = false;
      if (!bool3)
      {
        be.uA().d(new d(str));
        bool2 = true;
      }
    }
    return bool2;
  }

  public void b(Activity paramActivity, Bundle paramBundle)
  {
    if ((paramActivity instanceof WalletInputCardIDUI))
      b(paramActivity, WalletCardElmentUI.class, paramBundle);
    do
    {
      return;
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
    }
    while (!(paramActivity instanceof WalletOrderInfoUI));
    c(paramActivity, paramBundle);
  }

  public void c(Activity paramActivity, int paramInt)
  {
    if ((paramActivity instanceof WalletPwdConfirmUI))
    {
      a(paramActivity, WalletSetPasswordUI.class, paramInt);
      return;
    }
    n(paramActivity);
  }

  public boolean d(Activity paramActivity, Bundle paramBundle)
  {
    return paramActivity instanceof WalletOrderInfoUI;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.b
 * JD-Core Version:    0.6.2
 */