package com.tencent.mm.plugin.wallet.bind.ui;

import android.os.Handler;
import com.tencent.mm.plugin.wallet.ui.n;
import com.tencent.mm.sdk.platformtools.aa;

final class af
  implements n
{
  af(WalletCardImportUI paramWalletCardImportUI)
  {
  }

  public final void bW(boolean paramBoolean)
  {
    if (paramBoolean);
    for (int i = 8; ; i = 0)
    {
      aa.d("MicroMsg.WalletCardElmentUI", "onSizeChanged : " + paramBoolean);
      WalletCardImportUI.b(this.eZk).post(new ag(this, i));
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.bind.ui.af
 * JD-Core Version:    0.6.2
 */