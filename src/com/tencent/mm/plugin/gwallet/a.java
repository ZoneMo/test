package com.tencent.mm.plugin.gwallet;

import com.tencent.mm.plugin.gwallet.a.b;
import com.tencent.mm.plugin.gwallet.a.h;
import com.tencent.mm.plugin.gwallet.a.k;
import com.tencent.mm.sdk.platformtools.aa;

final class a
  implements h
{
  a(GWalletQueryProvider paramGWalletQueryProvider)
  {
  }

  public final void a(k paramk)
  {
    aa.d("MicroMsg.GWalletQueryProvider", "Setup finished.");
    if (!paramk.QD())
    {
      aa.e("MicroMsg.GWalletQueryProvider", "Problem setting up in-app billing: " + paramk);
      GWalletQueryProvider.a(this.dsK);
    }
    while (true)
    {
      if (GWalletQueryProvider.c(this.dsK) != null)
        GWalletQueryProvider.c(this.dsK).dispose();
      GWalletQueryProvider.d(this.dsK);
      return;
      GWalletQueryProvider.b(this.dsK);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.a
 * JD-Core Version:    0.6.2
 */