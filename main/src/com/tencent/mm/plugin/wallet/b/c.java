package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.bind.model.d;
import com.tencent.mm.plugin.wallet.bind.model.e;
import com.tencent.mm.plugin.wallet.bind.ui.WalletCardElmentUI;
import com.tencent.mm.plugin.wallet.bind.ui.WalletCardImportUI;
import com.tencent.mm.plugin.wallet.bind.ui.WalletInputCardIDUI;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.l;
import com.tencent.mm.plugin.wallet.pay.ui.WalletVerifyCodeUI;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletCheckPwdUI;
import com.tencent.mm.sdk.platformtools.aa;

public class c extends b
{
  public final i a(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "start Process : BindCardProcess");
    b(paramActivity, WalletCheckPwdUI.class, paramBundle);
    return this;
  }

  public final a a(l paraml, Orders paramOrders)
  {
    paraml.flag = "2";
    return new e(paraml);
  }

  public final a a(Authen paramAuthen, Orders paramOrders)
  {
    if (!anN());
    for (paramAuthen.bOY = 2; ; paramAuthen.bOY = 5)
      return new d(paramAuthen);
  }

  public final boolean a(a parama)
  {
    if (parama == null)
      return false;
    return parama instanceof e;
  }

  public final void b(Activity paramActivity, Bundle paramBundle)
  {
    if ((paramActivity instanceof WalletCheckPwdUI))
    {
      if (paramBundle.getBoolean("key_is_import_bind", false))
      {
        b(paramActivity, WalletCardImportUI.class, paramBundle);
        return;
      }
      b(paramActivity, WalletInputCardIDUI.class, paramBundle);
      return;
    }
    if (((paramActivity instanceof WalletCardElmentUI)) || ((paramActivity instanceof WalletCardImportUI)))
    {
      if (!anN())
      {
        b(paramActivity, WalletVerifyCodeUI.class, paramBundle);
        return;
      }
      c(paramActivity, paramBundle);
      return;
    }
    if ((paramActivity instanceof WalletVerifyCodeUI))
    {
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
    if (((paramActivity instanceof WalletCardElmentUI)) && (anN()));
    while ((paramActivity instanceof WalletVerifyCodeUI))
      return true;
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.c
 * JD-Core Version:    0.6.2
 */