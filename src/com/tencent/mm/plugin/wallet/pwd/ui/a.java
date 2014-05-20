package com.tencent.mm.plugin.wallet.pwd.ui;

import android.os.Bundle;
import com.tencent.mm.plugin.wallet.b.f;
import com.tencent.mm.plugin.wallet.b.g;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.k;
import com.tencent.mm.plugin.wallet.bind.model.Bankcard;
import com.tencent.mm.plugin.wallet.pwd.a.b;
import com.tencent.mm.plugin.wallet.ui.EditHintView;
import com.tencent.mm.plugin.wallet.ui.l;

final class a
  implements l
{
  a(WalletCheckPwdUI paramWalletCheckPwdUI)
  {
  }

  public final void aN(boolean paramBoolean)
  {
    String str;
    com.tencent.mm.plugin.wallet.b.i locali;
    Bankcard localBankcard;
    if (paramBoolean)
    {
      str = WalletCheckPwdUI.a(this.fdr).getText();
      locali = h.m(this.fdr);
      if (!(locali instanceof k))
        break label111;
      localBankcard = (Bankcard)this.fdr.aoJ().getParcelable("key_bankcard");
      if (!WalletCheckPwdUI.b(this.fdr))
        break label80;
      if (localBankcard != null)
        this.fdr.k(new com.tencent.mm.plugin.wallet.offline.model.a(localBankcard, str));
    }
    label80: 
    while (localBankcard == null)
      return;
    this.fdr.k(new com.tencent.mm.plugin.wallet.bind.model.i(localBankcard.eWH, localBankcard.eWT, str));
    return;
    label111: int i;
    if ((locali instanceof g))
      i = 4;
    while (true)
    {
      this.fdr.l(new b(str, i, this.fdr.aoK()));
      return;
      if ((locali instanceof f))
        i = 3;
      else
        i = 1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pwd.ui.a
 * JD-Core Version:    0.6.2
 */