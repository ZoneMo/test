package com.tencent.mm.plugin.wallet.iap.ui;

import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.wallet.a.a.c;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Iterator;
import java.util.List;

final class f
  implements com.tencent.mm.plugin.wallet.a.a.b
{
  f(e parame, boolean paramBoolean)
  {
  }

  public final void a(c paramc, com.tencent.mm.plugin.wallet.a.a.d paramd)
  {
    aa.d("MicroMsg.WalletIapUI", "Query inventory finished.");
    if ((paramc.isFailure()) || (paramd == null))
      aa.w("MicroMsg.WalletIapUI", "Failed to query inventory: " + paramc);
    while (true)
    {
      return;
      aa.d("MicroMsg.WalletIapUI", "Query inventory was successful.");
      d.a(this.faj.fai, paramd);
      WalletIapUI.a(this.faj.fai.fac, paramd.anu());
      List localList = paramd.anv();
      if ((localList != null) && (localList.size() > 0))
      {
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          com.tencent.mm.plugin.wallet.a.a.e locale = (com.tencent.mm.plugin.wallet.a.a.e)localIterator.next();
          aa.d("MicroMsg.WalletIapUI", "do NetSceneVerifyPurchase. productId: " + locale.Lg());
          if (locale.Lg().equals(d.c(this.faj.fai)))
          {
            ac localac2 = be.uA();
            String str2 = locale.Lg();
            localac2.d(new com.tencent.mm.plugin.wallet.iap.a.b(str2, 3, WalletIapUI.b(this.faj.fai.fac), locale.anx(), locale.any(), locale.rB(), d.d(this.faj.fai), d.e(this.faj.fai)));
            Object[] arrayOfObject = new Object[2];
            arrayOfObject[0] = d.e(this.faj.fai);
            arrayOfObject[1] = d.d(this.faj.fai);
            aa.f("MicroMsg.WalletIapUI", "after price:%s , currencyType:%s", arrayOfObject);
          }
          else
          {
            ac localac1 = be.uA();
            String str1 = locale.Lg();
            localac1.d(new com.tencent.mm.plugin.wallet.iap.a.b(str1, 3, WalletIapUI.b(this.faj.fai.fac), locale.anx(), locale.any(), locale.rB(), locale.anz(), locale.anA()));
          }
        }
      }
      else
      {
        aa.d("MicroMsg.WalletIapUI", "purchases is null. consume null ");
        if (!this.dsO)
          aa.d("MicroMsg.WalletIapUI", "unknown_purchase");
        for (c localc = c.jH(-2002); WalletIapUI.e(this.faj.fai.fac) != null; localc = c.jH(0))
        {
          WalletIapUI.e(this.faj.fai.fac).a(localc, null);
          return;
          aa.d("MicroMsg.WalletIapUI", "result ok");
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.iap.ui.f
 * JD-Core Version:    0.6.2
 */