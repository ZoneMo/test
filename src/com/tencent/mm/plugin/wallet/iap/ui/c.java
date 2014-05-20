package com.tencent.mm.plugin.wallet.iap.ui;

import android.content.Intent;
import com.tencent.mm.plugin.wallet.a.a.e;
import com.tencent.mm.sdk.platformtools.aa;

final class c
  implements h
{
  c(WalletIapUI paramWalletIapUI)
  {
  }

  public final void a(com.tencent.mm.plugin.wallet.a.a.c paramc, e parame)
  {
    aa.d("MicroMsg.WalletIapUI", "Consume finished: " + paramc + ", purchase: " + parame);
    if (paramc.isFailure())
      aa.d("MicroMsg.WalletIapUI", "back to preview UI, reason: consume Fail ! ");
    while (true)
    {
      Intent localIntent = new Intent();
      localIntent.putExtra("key_err_code", paramc.QC());
      localIntent.putExtra("key_err_msg", paramc.getMessage());
      localIntent.putStringArrayListExtra("key_response_product_ids", WalletIapUI.c(this.fac));
      localIntent.putStringArrayListExtra("key_response_series_ids", WalletIapUI.d(this.fac));
      this.fac.setResult(-1, localIntent);
      this.fac.finish();
      return;
      aa.d("MicroMsg.WalletIapUI", "back to preview UI, reason: consume Success ! ");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.c
 * JD-Core Version:    0.6.2
 */