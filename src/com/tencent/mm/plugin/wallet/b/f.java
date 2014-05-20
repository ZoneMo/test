package com.tencent.mm.plugin.wallet.b;

import android.app.Activity;
import android.os.Bundle;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletCheckPwdUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletPasswordSettingUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletPwdConfirmUI;
import com.tencent.mm.plugin.wallet.pwd.ui.WalletSetPasswordUI;
import com.tencent.mm.sdk.platformtools.aa;

public class f extends i
{
  public final i a(Activity paramActivity, Bundle paramBundle)
  {
    aa.d("MicroMsg.ProcessActivityMgr", "start Process : ModifyPwdProcess");
    b(paramActivity, WalletCheckPwdUI.class, paramBundle);
    return this;
  }

  public final void b(Activity paramActivity, Bundle paramBundle)
  {
    if ((paramActivity instanceof WalletCheckPwdUI))
      b(paramActivity, WalletSetPasswordUI.class, paramBundle);
    do
    {
      return;
      if ((paramActivity instanceof WalletSetPasswordUI))
      {
        b(paramActivity, WalletPwdConfirmUI.class, paramBundle);
        return;
      }
    }
    while (!(paramActivity instanceof WalletPwdConfirmUI));
    c(paramActivity, paramBundle);
  }

  public final void c(Activity paramActivity, int paramInt)
  {
    if ((paramActivity instanceof WalletPwdConfirmUI))
      a(paramActivity, WalletSetPasswordUI.class, paramInt);
  }

  public final void c(Activity paramActivity, Bundle paramBundle)
  {
    super.a(paramActivity, WalletPasswordSettingUI.class, paramBundle);
  }

  public final boolean d(Activity paramActivity, Bundle paramBundle)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.b.f
 * JD-Core Version:    0.6.2
 */