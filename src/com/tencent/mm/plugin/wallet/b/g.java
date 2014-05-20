package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.bind.ui.WalletCardElmentUI;
import com.tencent.mm.plugin.wallet.bind.ui.WalletInputCardIDUI;
import com.tencent.mm.plugin.wallet.bind.ui.WalletResetInfoUI;
import com.tencent.mm.plugin.wallet.c.a;
import com.tencent.mm.plugin.wallet.order.model.Orders;
import com.tencent.mm.plugin.wallet.pay.model.e;
import com.tencent.mm.plugin.wallet.pay.model.f;
import com.tencent.mm.plugin.wallet.pay.model.l;
import com.tencent.mm.plugin.wallet.pay.ui.WalletChangeBankcardUI;
import com.tencent.mm.plugin.wallet.pay.ui.WalletLauncherUI;
import com.tencent.mm.plugin.wallet.pay.ui.WalletOrderInfoUI;
import com.tencent.mm.plugin.wallet.pay.ui.WalletVerifyCodeUI;
import com.tencent.mm.plugin.wallet.protocal.Authen;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletCheckPwdUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletPwdConfirmUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletSetPasswordUI;
import com.tencent.mm.sdk.platformtools.aa;

public class g extends b
{
  public final i a(Activity paramActivity, Bundle paramBundle)
  {
    switch (paramBundle.getInt("key_err_code", 0))
    {
    default:
      aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + paramBundle.getInt("key_pay_flag", 0));
      switch (paramBundle.getInt("key_pay_flag", 0))
      {
      default:
        return this;
      case 1:
      case 2:
      case 3:
      }
    case 402:
    case 403:
    case 408:
      b(paramActivity, WalletResetInfoUI.class, paramBundle);
      return this;
    case -1003:
      paramBundle.putInt("key_pay_flag", 2);
      paramBundle.putInt("key_err_code", 0);
      b(paramActivity, WalletCheckPwdUI.class, paramBundle);
      return this;
    case -1004:
    }
    paramBundle.putInt("key_pay_flag", 3);
    paramBundle.putInt("key_err_code", 0);
    b(paramActivity, WalletChangeBankcardUI.class, paramBundle);
    return this;
    aa.d("MicroMsg.ProcessActivityMgr", "start Process : PayRegBindProcess");
    b(paramActivity, WalletInputCardIDUI.class, paramBundle);
    return this;
    aa.d("MicroMsg.ProcessActivityMgr", "start Process : PayBindProcess");
    b(paramActivity, WalletCheckPwdUI.class, paramBundle);
    return this;
    if ((paramBundle.getBoolean("key_need_verify_sms", false)) && (!anN()))
    {
      b(paramActivity, WalletVerifyCodeUI.class, paramBundle);
      return this;
    }
    b(paramActivity, WalletOrderInfoUI.class, paramBundle);
    return this;
  }

  public final a a(l paraml, Orders paramOrders)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + anL().getInt("key_pay_flag", 0));
    switch (anL().getInt("key_pay_flag", 0))
    {
    default:
      return null;
    case 1:
      paraml.flag = "1";
      return new f(paraml, paramOrders);
    case 2:
      if (!anN());
      for (paraml.flag = "2"; ; paraml.flag = "5")
        return new f(paraml, paramOrders);
    case 3:
    }
    anN();
    paraml.flag = "3";
    return new f(paraml, paramOrders);
  }

  public final a a(Authen paramAuthen, Orders paramOrders)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + anL().getInt("key_pay_flag", 0));
    switch (anL().getInt("key_pay_flag", 0))
    {
    default:
      return null;
    case 1:
      if (!anN());
      for (paramAuthen.bOY = 1; ; paramAuthen.bOY = 4)
        return new e(paramAuthen, paramOrders);
    case 2:
      if (!anN());
      for (paramAuthen.bOY = 2; ; paramAuthen.bOY = 5)
        return new e(paramAuthen, paramOrders);
    case 3:
    }
    if (!anN());
    for (paramAuthen.bOY = 3; ; paramAuthen.bOY = 6)
      return new e(paramAuthen, paramOrders);
  }

  public final boolean a(a parama)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + anL().getInt("key_pay_flag", 0));
    if (parama == null)
      return false;
    return parama instanceof f;
  }

  public final void b(Activity paramActivity, Bundle paramBundle)
  {
    int i;
    switch (paramBundle.getInt("key_err_code", 0))
    {
    default:
      if (paramBundle.containsKey("key_pay_flag"))
      {
        i = paramBundle.getInt("key_pay_flag", 0);
        aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + i);
        switch (i)
        {
        default:
        case 1:
        case 2:
        case 3:
        }
      }
      break;
    case 402:
    case 403:
    case 408:
    case -1003:
    case -1004:
    }
    do
    {
      return;
      b(paramActivity, WalletResetInfoUI.class, paramBundle);
      return;
      paramBundle.putInt("key_pay_flag", 2);
      paramBundle.putInt("key_err_code", 0);
      b(paramActivity, WalletCheckPwdUI.class, paramBundle);
      return;
      paramBundle.putInt("key_pay_flag", 3);
      paramBundle.putInt("key_err_code", 0);
      b(paramActivity, WalletChangeBankcardUI.class, paramBundle);
      return;
      i = anL().getInt("key_pay_flag", 0);
      break;
      if ((paramActivity instanceof WalletSetPasswordUI))
      {
        b(paramActivity, WalletPwdConfirmUI.class, paramBundle);
        return;
      }
      if ((paramActivity instanceof WalletPwdConfirmUI))
      {
        b(paramActivity, WalletOrderInfoUI.class, paramBundle);
        return;
      }
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
      super.b(paramActivity, paramBundle);
      return;
      if ((paramActivity instanceof WalletCheckPwdUI))
      {
        b(paramActivity, WalletInputCardIDUI.class, paramBundle);
        return;
      }
      if ((paramActivity instanceof WalletVerifyCodeUI))
      {
        b(paramActivity, WalletOrderInfoUI.class, paramBundle);
        return;
      }
      if ((paramActivity instanceof WalletCardElmentUI))
      {
        if (!anN())
        {
          b(paramActivity, WalletVerifyCodeUI.class, paramBundle);
          return;
        }
        b(paramActivity, WalletOrderInfoUI.class, paramBundle);
        return;
      }
      super.b(paramActivity, paramBundle);
      return;
      if ((paramActivity instanceof WalletVerifyCodeUI))
      {
        b(paramActivity, WalletOrderInfoUI.class, paramBundle);
        return;
      }
      if (((paramActivity instanceof WalletResetInfoUI)) || ((paramActivity instanceof WalletChangeBankcardUI)))
      {
        if ((paramBundle.getBoolean("key_need_verify_sms", false)) && (!anN()))
        {
          b(paramActivity, WalletVerifyCodeUI.class, paramBundle);
          return;
        }
        b(paramActivity, WalletOrderInfoUI.class, paramBundle);
        return;
      }
    }
    while (!(paramActivity instanceof WalletOrderInfoUI));
    c(paramActivity, paramBundle);
  }

  public final void c(Activity paramActivity, int paramInt)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + anL().getInt("key_pay_flag", 0));
    switch (anL().getInt("key_pay_flag", 0))
    {
    default:
      return;
    case 1:
      if ((paramActivity instanceof WalletPwdConfirmUI))
      {
        a(paramActivity, WalletSetPasswordUI.class, paramInt);
        return;
      }
      n(paramActivity);
      return;
    case 2:
      if ((paramActivity instanceof WalletPwdConfirmUI))
      {
        a(paramActivity, WalletSetPasswordUI.class, paramInt);
        return;
      }
      n(paramActivity);
      return;
    case 3:
    }
    n(paramActivity);
  }

  public final void c(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + anL().getInt("key_pay_flag", 0));
    switch (anL().getInt("key_pay_flag", 0))
    {
    default:
      return;
    case 1:
      a(paramActivity, WalletLauncherUI.class, paramBundle);
      return;
    case 2:
      a(paramActivity, WalletLauncherUI.class, paramBundle);
      return;
    case 3:
    }
    a(paramActivity, WalletLauncherUI.class, paramBundle);
  }

  public final boolean d(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "pay_flag : " + anL().getInt("key_pay_flag", 0));
    switch (anL().getInt("key_pay_flag", 0))
    {
    case 3:
    default:
      return false;
    case 1:
      return paramActivity instanceof WalletOrderInfoUI;
    case 2:
    }
    return paramActivity instanceof WalletOrderInfoUI;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.g
 * JD-Core Version:    0.6.2
 */