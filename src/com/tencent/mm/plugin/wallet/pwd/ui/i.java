package com.tencent.mm.plugin.wallet.pwd.ui;

import com.tencent.mm.c.a.ij;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class i extends g
{
  i(WalletPwdConfirmUI paramWalletPwdConfirmUI)
  {
  }

  public final boolean a(e parame)
  {
    if ((parame instanceof ij))
    {
      aa.d("Micromsg.WalletPwdConfirmUI", "event WalletPwdConfirmDoSecondaryProgressCallbackEvent");
      WalletPwdConfirmUI.e(this.fdE);
      WalletPwdConfirmUI.f(this.fdE);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.i
 * JD-Core Version:    0.6.2
 */