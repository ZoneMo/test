package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.bind.model.e;
import com.tencent.mm.plugin.wallet.bind.ui.WalletCardElmentUI;
import com.tencent.mm.plugin.wallet.bind.ui.WalletCardImportUI;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.ui.WalletVerifyCodeUI;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletPwdConfirmUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletSetPasswordUI;

public class d extends b
{
  public final i a(Activity paramActivity, Bundle paramBundle)
  {
    if (paramBundle != null)
      l.aI(paramBundle.getInt("key_bind_scene", 0), 1);
    if ((paramBundle != null) && (paramBundle.getBoolean("key_is_import_bind", false)))
    {
      b(paramActivity, WalletCardImportUI.class, paramBundle);
      return this;
    }
    return super.a(paramActivity, paramBundle);
  }

  public final a a(com.tencent.mm.plugin.wallet.pay.model.l paraml, Orders paramOrders)
  {
    paraml.flag = "1";
    return new e(paraml);
  }

  public final a a(Authen paramAuthen, Orders paramOrders)
  {
    if (!anN());
    for (paramAuthen.bOY = 1; ; paramAuthen.bOY = 4)
      return new com.tencent.mm.plugin.wallet.bind.model.d(paramAuthen);
  }

  public final boolean a(a parama)
  {
    if (parama == null)
      return false;
    return parama instanceof e;
  }

  public final void b(Activity paramActivity, Bundle paramBundle)
  {
    if (((paramActivity instanceof WalletCardElmentUI)) || ((paramActivity instanceof WalletCardImportUI)))
    {
      if (!anN())
      {
        b(paramActivity, WalletVerifyCodeUI.class, paramBundle);
        return;
      }
      b(paramActivity, WalletSetPasswordUI.class, paramBundle);
      return;
    }
    if ((paramActivity instanceof WalletPwdConfirmUI))
    {
      l.aI(this.diG.getInt("key_bind_scene", 0), 7);
      c(paramActivity, paramBundle);
      return;
    }
    super.b(paramActivity, paramBundle);
  }

  public final void c(Activity paramActivity, Bundle paramBundle)
  {
    anJ();
    if ((paramBundle != null) && (paramBundle.getBoolean("need_bind_response", false)))
    {
      i(paramActivity, paramBundle);
      return;
    }
    h(paramActivity, paramBundle);
  }

  public final boolean d(Activity paramActivity, Bundle paramBundle)
  {
    return paramActivity instanceof WalletPwdConfirmUI;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.d
 * JD-Core Version:    0.6.2
 */