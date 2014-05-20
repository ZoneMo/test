package com.tencent.mm.plugin.gwallet;

import android.content.Intent;
import com.tencent.mm.plugin.gwallet.a.h;
import com.tencent.mm.plugin.gwallet.a.k;
import com.tencent.mm.sdk.platformtools.aa;

final class c
  implements h
{
  c(GWalletUI paramGWalletUI)
  {
  }

  public final void a(k paramk)
  {
    aa.d("MicroMsg.GWalletUI", "Setup finished.");
    if (!paramk.QD())
    {
      aa.e("MicroMsg.GWalletUI", "Problem setting up in-app billing: " + paramk);
      Intent localIntent = new Intent();
      localIntent.putExtra("RESPONSE_CODE", paramk.QC());
      GWalletUI.a(this.dsM, -1, localIntent);
      return;
    }
    if ("com.tencent.mm.gwallet.ACTION_PAY_REQUEST".equals(this.dsM.getIntent().getAction()))
    {
      GWalletUI.a(this.dsM);
      return;
    }
    this.dsM.aF(this.dsM.getIntent().getBooleanExtra("is_direct", true));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.c
 * JD-Core Version:    0.6.2
 */