package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.bind.ui.WalletBankcardDetailUI;
import com.tencent.mm.plugin.wallet.offline.ui.WalletOfflinePayAuthenFinishUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletCheckPwdUI;
import com.tencent.mm.sdk.platformtools.aa;

public class k extends i
{
  public i a(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "start Process : UnbindProcess");
    b(paramActivity, WalletBankcardDetailUI.class, paramBundle);
    return this;
  }

  public void b(Activity paramActivity, Bundle paramBundle)
  {
    boolean bool = false;
    if (paramBundle != null)
      bool = paramBundle.getBoolean("offline_pay", false);
    if ((paramActivity instanceof WalletBankcardDetailUI))
      b(paramActivity, WalletCheckPwdUI.class, paramBundle);
    do
    {
      return;
      if (((paramActivity instanceof WalletCheckPwdUI)) && (bool))
      {
        b(paramActivity, WalletOfflinePayAuthenFinishUI.class, paramBundle);
        return;
      }
      if (((paramActivity instanceof WalletCheckPwdUI)) && (!bool))
      {
        c(paramActivity, paramBundle);
        return;
      }
    }
    while (!(paramActivity instanceof WalletOfflinePayAuthenFinishUI));
    c(paramActivity, paramBundle);
  }

  public void c(Activity paramActivity, int paramInt)
  {
    n(paramActivity);
  }

  public void c(Activity paramActivity, Bundle paramBundle)
  {
    super.h(paramActivity, paramBundle);
  }

  public boolean d(Activity paramActivity, Bundle paramBundle)
  {
    return paramActivity instanceof WalletCheckPwdUI;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.k
 * JD-Core Version:    0.6.2
 */