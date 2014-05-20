package com.tencent.mm.plugin.wallet.iap.ui;

import android.content.Intent;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.wallet.a.a.c;
import com.tencent.mm.plugin.wallet.a.a.e;
import com.tencent.mm.plugin.wallet.b.l;
import com.tencent.mm.sdk.platformtools.aa;

final class b
  implements h
{
  b(WalletIapUI paramWalletIapUI)
  {
  }

  public final void a(c paramc, e parame)
  {
    aa.d("MicroMsg.WalletIapUI", "Pay Purchase finished: " + paramc + ", purchase: " + parame);
    if ((WalletIapUI.a(this.fac) instanceof d))
    {
      if (parame == null)
        break label164;
      l.c(parame.anw(), parame.Lg(), parame.anA(), paramc.QC(), paramc.getMessage());
    }
    while (paramc.isFailure())
    {
      aa.d("MicroMsg.WalletIapUI", "back to preview UI, reason: purchase finish , errCode: " + paramc.QC() + " , errMsg: " + paramc.getMessage());
      Intent localIntent = new Intent();
      localIntent.putExtra("key_err_code", paramc.QC());
      localIntent.putExtra("key_err_msg", paramc.getMessage());
      this.fac.setResult(-1, localIntent);
      this.fac.finish();
      return;
      label164: d locald = (d)WalletIapUI.a(this.fac);
      l.c(locald.anH(), locald.anG(), locald.anF(), paramc.QC(), paramc.getMessage());
    }
    if (!paramc.QE())
    {
      aa.d("MicroMsg.WalletIapUI", "verify purchase! productId:" + parame.Lg());
      be.uA().d(new com.tencent.mm.plugin.wallet.iap.a.b(parame.Lg(), WalletIapUI.a(this.fac).anI(), WalletIapUI.b(this.fac), parame.anx(), parame.any(), parame.rB(), parame.anz(), parame.anA()));
      return;
    }
    aa.d("MicroMsg.WalletIapUI", "start to restore the purchase!");
    WalletIapUI.a(this.fac).bY(false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.b
 * JD-Core Version:    0.6.2
 */