package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.l;

final class k
  implements l
{
  k(WalletSetPasswordUI paramWalletSetPasswordUI)
  {
  }

  public final void aN(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      String str = WalletSetPasswordUI.a(this.fdF).get3DesEncrptData();
      Bundle localBundle = new Bundle();
      localBundle.putString("key_new_pwd1", str);
      WalletSetPasswordUI.a(this.fdF).UP();
      h.e(this.fdF, localBundle);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.k
 * JD-Core Version:    0.6.2
 */