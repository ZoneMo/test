package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import android.widget.TextView;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.l;

final class g
  implements l
{
  g(WalletPwdConfirmUI paramWalletPwdConfirmUI)
  {
  }

  public final void aN(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str1 = this.fdE.aoJ().getString("key_new_pwd1");
      String str2 = WalletPwdConfirmUI.a(this.fdE).get3DesEncrptData();
      if ((str1 == null) || (!str1.equals(str2)))
      {
        h.d(this.fdE, -1002);
        return;
      }
      WalletPwdConfirmUI.c(this.fdE).setEnabled(paramBoolean);
      WalletPwdConfirmUI.c(this.fdE).setClickable(paramBoolean);
      return;
    }
    WalletPwdConfirmUI.c(this.fdE).setEnabled(paramBoolean);
    WalletPwdConfirmUI.c(this.fdE).setClickable(paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.g
 * JD-Core Version:    0.6.2
 */