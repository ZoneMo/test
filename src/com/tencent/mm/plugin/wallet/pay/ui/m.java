package com.tencent.mm.plugin.wallet.pay.ui;

import com.tencent.mm.model.au;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

final class m
  implements au
{
  m(WalletOrderInfoUI paramWalletOrderInfoUI)
  {
  }

  public final void g(String paramString, boolean paramBoolean)
  {
    i locali = be.uz().su().tO(paramString);
    aa.d("MicroMsg.WalletOrderInfoUI", "call back from contactServer " + paramString + " succ: " + paramBoolean);
    WalletOrderInfoUI.a(this.fbR, locali);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.m
 * JD-Core Version:    0.6.2
 */